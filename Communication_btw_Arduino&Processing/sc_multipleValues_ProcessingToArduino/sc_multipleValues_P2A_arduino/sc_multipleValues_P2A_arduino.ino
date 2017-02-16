// IMA NYU Shanghai
// Interaction Lab
// Nov 26 2016
// MOQN
// jh.moon@nyu.edu

/**
  This example is to send multiple values from Processing to Arduino.
  You can find the Processing example file in the same folder which works with this Arduino file.
  Please note that the echo case (when char c is 'e' in the getSerialData function below)
  checks if Arduino is receiving the correct bytes from the Processing sketch
  by sending the values array back to the Processing sketch.
 **/

#define NUM_OF_VALUES 10    /** YOU MUST CHANGE THIS ACCORDING TO YOUR PROJECT **/


/** DO NOT REMOVE THESE **/
int tempValue = 0;
int valueIndex = 0;

/* This is the array of values storing the data from Processing. */
int values[NUM_OF_VALUES];


void setup() {
  Serial.begin(9600);
}

void loop() {
  getSerialData();

  // add your code here
  // use elements in the values array
  // values[0]
  // values[1]
}


//recieve serial data from Processing
/* If you are curious about this part, send an email to me! */
void getSerialData() {
  if (Serial.available()) {
    char c = Serial.read();
    //switch - case checks the value of the variable in the switch function
    //in this case, the char c, then runs one of the cases that fit the value of the variable
    //for more information, visit the reference page: https://www.arduino.cc/en/Reference/SwitchCase
    switch (c) {
      //if the char c from Processing is a number between 0 and 9
      case '0'...'9':
        //save the value of char c to tempValue
        //but simultaneously rearrange the existing values saved in tempValue
        //for the digits received through char c to remain coherent
        //if this does not make sense and would like to know more, send an email to me!
        tempValue = tempValue * 10 + c - '0';
        break;
      //if the char c from Processing is a comma
      //indicating that the following values of char c is for the next element in the values array
      case ',':
        values[valueIndex] = tempValue;
        //reset tempValue value
        tempValue = 0;
        //increment valuesIndex by 1
        valueIndex++;
        break;
      //if the char c from Processing is character 'n'
      //which signals that it is the end of data
      case 'n':
        //save the tempValue
        //this will b the last element in the values array
        values[valueIndex] = tempValue;
        //reset tempValue and valueIndex values
        //to clear out the values array for the next round of readings from Processing
        tempValue = 0;
        valueIndex = 0;
        break;
      //if the char c from Processing is character 'e'
      //it is signalling for the Arduino to send Processing the elements saved in the values array
      //this case is triggered and processed by the echoSerialData function in the Processing sketch
      case 'e': // to echo
        for (int i = 0; i < NUM_OF_VALUES; i++) {
          Serial.print(values[i]);
          if (i < NUM_OF_VALUES - 1) {
            Serial.print(',');
          }
          else {
            Serial.println();
          }
        }
        break;
    }
  }
}
