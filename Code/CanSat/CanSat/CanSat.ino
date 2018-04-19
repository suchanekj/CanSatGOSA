#include <Servo.h>

int analogPin = 3;   // potentiometer connected to analog pin 3
int val = 0;         // variable to store the read value

Servo sdasd[8];

void setup()
{
  for(int i = 2; i <= 9; i++)
    sdasd[i-2].attach(i, 1000, 2000);
}

void loop()
{
  for(int j = 0; j <= 180; j += 5)
  {
    for(int i = 0; i < 8; i++)
      sdasd[i].write(j);
    delay(1000);
  }
}
