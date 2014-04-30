// Define the pins that have LEDs on them. We have one LED for each of the three FSRs to indicate
// when each FSR is triggered. And one power/end stop LED that is on until any of the FSRs are
// triggered.
#define LED1        13
#define LED2        12
#define LED3        11
#define LEDTRIGGER  10
#define ENDSTOP     03

// Define the pins used for the analog inputs that have the FSRs attached. These have external
// 10K pull-up resistors.
#define FSR1        A0
#define FSR2        A1
#define FSR3        A2

// The end stop output
#define TRIGGER     03

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

void SetOutput(short fsr, bool state)
{
    static bool triggered[3] = {false};

    triggered[fsr] = state;
    digitalWrite(fsrLeds[fsr], state ? HIGH : LOW);

    bool any = false;
    for (uint8_t fsr = 0; fsr < 3; fsr++)
    {
        any |= triggered[fsr];
    }

    digitalWrite(LEDTRIGGER, any ? LOW : HIGH);
    digitalWrite(ENDSTOP, any ? HIGH : LOW);
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
    digitalWrite(ENDSTOP, LOW);
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

void CalculateThreshold(short fsr)
{
    uint16_t avg = 0;
    for (int i = 0; i < SHORT_SIZE; i++)
    {
        avg += shortSamples[fsr][i];
    }
    uint16_t value = avg / SHORT_SIZE;

    uint16_t longAverage = UpdateLongSamples(fsr, value);

    uint16_t threshold = 0.92 * longAverage;

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

