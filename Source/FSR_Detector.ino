// Pin layout copied from pins.arduino.h for convience, and then added how the pins are
// connected on the circuit board.
//
// ATMEL ATTINY861
//
//                             +-\/-+
// MOSI           (D  9) PB0  1|    |20  PA0 (D  0)           FSR1
// MISO          *(D  8) PB1  2|    |19  PA1 (D  1)           FSR2
// SCK            (D  7) PB2  3|    |18  PA2 (D  2) INT1      FSR3
// NC/IO3        *(D  6) PB3  4|    |17  PA3 (D 14)
//                       VCC  5|    |16  AGND
//                       GND  6|    |15  AVCC
// SN1/IO2        (D  5) PB4  7|    |14  PA4 (D 10)           LED4
// SN2/IO1       *(D  4) PB5  8|    |13  PA5 (D 11)           LED3
// SIG       INT0 (D  3) PB6  9|    |12  PA6 (D 12)           LED2
// RST            (D 15) PB7 10|    |11  PA7 (D 13)           LED1
//                             +----+
//

// Define the pins that have LEDs on them. We have one LED for each of the three FSRs to indicate
// when each FSR is triggered. And one power/end stop LED that is on until any of the FSRs are
// triggered.
#define LED1        13
#define LED2        12
#define LED3        11

#define LEDTRIGGER  10
#define ENDSTOP     3

// Define the pins used for the analog inputs that have the FSRs attached. These have external
// 10K pull-up resistors.
#define FSR1        A0
#define FSR2        A1
#define FSR3        A2

// Jumper pins, which are labels IO3, IO2, and IO1 on the revision 1.1 boards. On the
// revision 1.2 boards, these are labeled NC, SN1, and SN2
#define NC_PIN      6
#define SEN1        5
#define SEN2        4

// The end stop output
#define TRIGGER     03
#define TRIGGERED   LOW
#define UNTRIGGERED HIGH

//  SEN1    SEN2    Threshold
//  ----    ----    ---------
//   0       0          0.80
//   0       1          0.85
//   1       0          0.95
//   1       1          0.92
const float thresholds[] = { 0.80, 0.85, 0.95, 0.92 };

short fsrLeds[] = { LED1, LED2, LED3 };     // Pins for each of the LEDs next to the FSR inputs
short fsrPins[] = { FSR1, FSR2, FSR3 };     // Pins for each of the FSR analog inputs

#define SHORT_SIZE 8
#define LONG_SIZE 16
#define LONG_INTERVAL (2000 / LONG_SIZE)

unsigned long lastLongTime[3];              // Last time in millis that we captured a long-term sample
uint16_t longSamples[3][LONG_SIZE];         // Used to keep a long-term average
uint8_t longIndex[3] = {0, 0, 0};           // Index of the last long-term sample
uint16_t longAverage[3] = {0, 0, 0};

uint16_t shortSamples[3][SHORT_SIZE];       // Used to create an average of the most recent samples
uint8_t averageIndex[3] = {0, 0, 0};

//
// Set the triggered state based on the state of one FSR
//
void SetOutput(short fsr, bool state)
{
    static bool triggered[3] = {false};     // Keeps track of current FSR trigger state, initiall not triggered

    // Turns on the FSR LED when that FSR is triggered
    triggered[fsr] = state;
    digitalWrite(fsrLeds[fsr], state ? HIGH : LOW);

    // See if any of the FSRs are currently triggered
    bool any = false;
    for (uint8_t fsr = 0; fsr < 3; fsr++)
    {
        any |= triggered[fsr];
    }

    digitalWrite(LEDTRIGGER, any ? LOW : HIGH);

    // For the end stop, we need to check the NC jumpper to see if we need to invert
    // the output.
    int ncPin = digitalRead(NC_PIN);
    if (ncPin == 1)
    {
        // No jumper installed, so use Normally Closed
        digitalWrite(ENDSTOP, any ? LOW : HIGH);
    }
    else
    {
        // Jumper installed, so use Normally Open
        digitalWrite(ENDSTOP, any ? HIGH: LOW);
    }
}

void InitValues()
{
    for (uint8_t fsr = 0; fsr < 3; fsr++)
    {
        for (uint8_t i = 0; i < SHORT_SIZE; i++)
            shortSamples[fsr][i] = 0;

        for (uint8_t i = 0; i < LONG_SIZE; i++)
            longSamples[fsr][i] = 0;
    }

    for (uint8_t fsr = 0; fsr < 3; fsr++)
        lastLongTime[fsr] = millis();
}

void InitializeJumpers()
{
    pinMode(NC_PIN, INPUT_PULLUP);
    pinMode(SEN1, INPUT_PULLUP);
    pinMode(SEN2, INPUT_PULLUP);
}

//
// One-time setup for the various I/O ports
//
void setup()
{
    InitValues();

    for (uint8_t fsr = 0; fsr < 3; fsr++)
    {
        // Set the FSR LEDs for output and turn them off
        uint8_t pin = fsrLeds[fsr];
        pinMode(pin, OUTPUT);
        digitalWrite(pin, LOW);

        // Set the FSR lines for inputs without a pull-up since the board has external 10K
        // pull-up resistors.
        pin = fsrPins[fsr];
        pinMode(pin, INPUT);
    }

    // Set the green combined LED to on so it acts as a power-on indicator. We'll turn it
    // off whenever we trigger the end stop.
    pinMode(LEDTRIGGER, OUTPUT);
    digitalWrite(LEDTRIGGER, HIGH);

    // Set the endstop pin to be an output that is set for NC
    pinMode(ENDSTOP, OUTPUT);

    // Set the jumpers to use the internal pull-up resiter and be for input
    InitializeJumpers();
};

//
// Captures a new value once LONG_INTERVAL ms have passed since the last sample.
//
// Returns: The current long-range average
uint16_t UpdateLongSamples(short fsr, int avg)
{
    unsigned long current = millis();
    if (current - lastLongTime[fsr] <= LONG_INTERVAL)
    {
        return longAverage[fsr];
    }

    longSamples[fsr][longIndex[fsr]++] = avg;
    if (longIndex[fsr] >= LONG_SIZE)
    {
        longIndex[fsr] = 0;
    }

    uint16_t total = 0;
    for (int i = 0; i < LONG_SIZE; i++)
    {
        total += longSamples[fsr][i];
    }
    
    longAverage[fsr] = total / LONG_SIZE;

    lastLongTime[fsr] = millis();
    return longAverage[fsr];
}

//
// Returns the current threshold ot use, baed on jumpers installed
inline float GetThreshold()
{
    int sen1 = digitalRead(SEN1);
    int sen2 = digitalRead(SEN2);

    int index = sen1 << 1 | sen2;
    return thresholds[index];
}

void CalculateThreshold(short fsr)
{
    uint16_t avg = 0;
    for (int i = 0; i < SHORT_SIZE; i++)
    {
        avg += shortSamples[fsr][i];
    }
    uint16_t value = avg / SHORT_SIZE;

    uint16_t longAverage = UpdateLongSamples(fsr, value);

    uint16_t threshold = GetThreshold() * longAverage;

    bool triggered = value < threshold;
    SetOutput(fsr, triggered);
}

void loop()
{
    for (uint8_t fsr = 0; fsr < 3; fsr++)
    {
        int value = analogRead(fsrPins[fsr]);

        shortSamples[fsr][averageIndex[fsr]++] = value;
        if (averageIndex[fsr] >= SHORT_SIZE)
        {
            CalculateThreshold(fsr);
            averageIndex[fsr] = 0;
        }
    }
};

