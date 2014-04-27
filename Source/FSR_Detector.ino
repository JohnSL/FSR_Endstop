#define LED1        13
#define LED2        12
#define LED3        11
#define LEDTRIGGER  10

#define FSR1        A0
#define FSR2        A1
#define FSR3        A2

short fsrLeds[] = { LED1, LED2, LED3 };
short fsrs[] = {FSR1, FSR2, FSR3 };

#define SHORT_SIZE 10
#define LONG_SIZE 20
#define LONG_INTERVAL (2000 / LONG_SIZE)

unsigned long lastLongTime;
int longSamples[LONG_SIZE];             // Used to keep a long-term average
int longIndex = 0;
int longAverage = 0;

int shortSamples[SHORT_SIZE];           // Used to create an average of the most recent samples
uint8_t averageIndex = 0;

void SetOutput(bool state)
{
    digitalWrite(LED1, state ? HIGH : LOW);
}

void InitValues()
{
    for (uint8_t i = 0; i < SHORT_SIZE; i++)
    {
        shortSamples[i] = 0;
    }

    for (int i = 0; i < LONG_SIZE; i++)
    {
        longSamples[i] = 0;
    }

    lastLongTime = millis();
}

//
// One-time setup for the various I/O ports
//
void setup()
{
    InitValues();
//    analogReference(INTERNAL);

    for (short i = 0; i < 3; i++)
    {
        short pin = fsrLeds[i];
        pinMode(pin, OUTPUT);
        digitalWrite(pin, LOW);

        pin = fsrs[i];
        pinMode(pin, INPUT);
    }

    pinMode(LEDTRIGGER, OUTPUT);
    digitalWrite(LEDTRIGGER, HIGH);
};

//
// Captures a new value once LONG_INTERVAL ms have passed since the last sample.
//
// Returns: The current long-range average
int UpdateLongSamples(int avg)
{
    unsigned long current = millis();
    if (current - lastLongTime <= LONG_INTERVAL)
    {
        return longAverage;
    }

    longSamples[longIndex++] = avg;
    if (longIndex > LONG_SIZE)
    {
        longIndex = 0;
    }

    int total = 0;
    for (int i = 0; i < LONG_SIZE; i++)
    {
        total += longSamples[i];
    }
    
    longAverage = total / LONG_SIZE;

    lastLongTime = millis();
    return longAverage;
}

void CalculateThreshold()
{
    int avg = 0;
    for (int i = 0; i < SHORT_SIZE; i++)
    {
        avg += shortSamples[i];
    }
    int value = avg / SHORT_SIZE;

    int longAverage = UpdateLongSamples(value);

    int threshold = 0.9 * longAverage;

    bool triggered = value < threshold;
    SetOutput(triggered);
}

void Toggle()
{
    static bool state = false;

    digitalWrite(LED3, state ? HIGH : LOW);
    state = !state;
}

void loop()
{
    int value = analogRead(FSR1);
    shortSamples[averageIndex++] = value;
    if (averageIndex >= 8)
        averageIndex = 0;

    if (averageIndex == 7)
    {
        CalculateThreshold();
    }
};

