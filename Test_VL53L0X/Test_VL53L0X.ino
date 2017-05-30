#include <Wire.h>
#include <VL53L0X.h>

//We create the sensors objects
VL53L0X sensor;
VL53L0X sensor2;

void setup()
{
  //These pins are going connected to the XSHUT of each sensor
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  //First we put them in '0', so they are disabled
  digitalWrite(4, LOW);
  digitalWrite(5, LOW);
  //We wait a little bit until they are actually disabled and start the I2C communication
  delay(500);
  Wire.begin();
  //Begin Serial
  Serial.begin (9600);

  //SENSOR///////////////////
  //We put it in '1', so it's enabled. 
  //*IMPORTANT NOTE* we cannot send a HIGH signal, because we would burn it. So, what we do is put a really high impedance on it. Because by default, that pin is connected to HIGH.
  pinMode(4, INPUT);
  //Must wait this time for it to actually be enabled
  delay(150);
  Serial.println("00");
  //Initialize the sensor
  sensor.init(true);
  Serial.println("01");
  //Wait for it to be initialized
  delay(100);
  //Set a new address
  //*IMPORTANT NOTE* we have to check that the addresses doesn't match with those of other sensors
  sensor.setAddress((uint8_t)22);
  Serial.println("02");

  //SENSOR 2//////////////
  pinMode(5, INPUT);
  delay(150);
  sensor2.init(true);
  Serial.println("03");
  delay(100);
  sensor2.setAddress((uint8_t)25);
  Serial.println("04");

  Serial.println("");
  Serial.println("addresses set");
  Serial.println("");
  Serial.println("");


  //Set the time out of the sensor
  sensor.setTimeout(500);
  sensor2.setTimeout(500);


}

void loop()
{
  Serial.println("__________________________________________________________________");
  Serial.println("");
  Serial.println("=================================");
  Serial.println ("I2C scanner. Scanning ...");
  byte count = 0;


  //for (byte i = 1; i < 120; i++)
  for (byte i = 1; i < 30; i++)
  {

    Wire.beginTransmission (i);
    if (Wire.endTransmission () == 0)
    {
      Serial.print ("Found address: ");
      Serial.print (i, DEC);
      Serial.print (" (0x");
      Serial.print (i, HEX);
      Serial.println (")");
      count++;
      delay (1);  // maybe unneeded?
    } // end of good response
  } // end of for loop
  Serial.println ("Done.");
  Serial.print ("Found ");
  Serial.print (count, DEC);
  Serial.println (" device(s).");
  Serial.println("=================================");


  //CHECK DISTANCES
  long DISTANCE_FWD = (sensor.readRangeSingleMillimeters());
  long DISTANCE_FLT = (sensor2.readRangeSingleMillimeters());

  //FWD OR SENSOR
  if (sensor.timeoutOccurred())
  {
    Serial.println("_________________________________");
    Serial.print("Distance FWD (READING): ");
    Serial.println(" TIMEOUT");
    Serial.println("_________________________________");
    Serial.println("");
  }
  else
  {
    Serial.println("_________________________________");
    Serial.println(DISTANCE_FWD);
    Serial.println("_________________________________");
    Serial.println("");
  }

  //FLT OR SENSOR2
  if (sensor2.timeoutOccurred())
  {
    Serial.println("_________________________________");
    Serial.print("Distance FLT (READING): ");
    Serial.println(" TIMEOUT");
    Serial.println("_________________________________");
    Serial.println("");
  }
  else
  {
    Serial.println("_________________________________");
    Serial.println(DISTANCE_FLT);
    Serial.println("_________________________________");
    Serial.println("");
  }


  
  Serial.println("__________________________________________________________________");
  Serial.println();
  Serial.println();
  Serial.println();
  Serial.println();


  
  delay(2000);//can change to a lower time like 100
}
