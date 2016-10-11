import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int sweep = 13;
int pos =0;

void setup()
{
    println(Arduino.list());
    arduino = new Arduino(this, Arduino.list()[1], 57600);
    arduino.pinMode(sweep, Arduino.SERVO);
}

void draw()
{
    for (pos = 0; pos <= 180; pos += 1) { 
      arduino.servoWrite(sweep, pos); 
      delay(15);
    }
    for (pos = 180; pos >= 0; pos -= 1) { 
      arduino.servoWrite(sweep, pos);  
      delay(15); 
    }
}