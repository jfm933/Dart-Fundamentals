void main() {
  // print("Hello World");
  // Booleans
  // const bool yes = true;
  // const bool no = false;
  // print(yes);
  // print(no);

  // Boolean Operators
  // const doesOneEqualTwo = (1 == 2);
  // print(doesOneEqualTwo);

  // const doesOneNotEqualTwo = (1 != 2);
  // print(doesOneNotEqualTwo);

  // print(1 == "1");

  // const alsoTrue = !(1 == 2);
  // print(alsoTrue);

  // const isOneGreaterThanTwo = (1 > 2);
  // print(isOneGreaterThanTwo);

  // const isOneLessThanTwo = (1 < 2);
  // print(isOneLessThanTwo);
  // print(1 <= 2);
  // print(1 >= 2);
  // print(2 >= 2);
  // print(2 <= 2);

  // Boolean Logic
  // const isSunny = true;
  // const isFinished = true;
  // const willGoCycling = isSunny && isFinished;
  // print(willGoCycling);

  // const willTravelToAustralia = false;
  // const canFIndPhotos = true;
  // const canDrawPlatypus = willTravelToAustralia || canFIndPhotos;
  // print(canDrawPlatypus);

  // Operator Precedence
  // const andTrue = 1 < 2 && 3 < 4;
  // print(andTrue);
  // const andFalse = 1 < 2 && 3 > 4;
  // print(andFalse);

  // const orTrue = 1 < 2 || 3 < 4;
  // print(orTrue);
  // const orFalse = 1 > 2 || 3 > 4;
  // print(orFalse);

  // Complex COmparison
  // print(3 > 4 && 1 < 2 || 2 > 1);

  // Overriding Precedence With Parentheses
  // print(3 > 4 && (1 < 2 || 2 > 1)); // False
  // print((3 > 4 && 1 < 2) || 2 > 1); // True

  // String Equality
  // const guess = 'dog';
  // const guessEqualsCat = guess == 'cat';
  // print(guessEqualsCat);

  // Exercises
  /*
  Create a constant called myAge and set it to your age. Then, create a constant named isTeenager that uses Boolean logic to determine if the age denotes someone in the age range of 13 to 19.
   */

  // const myAge = 25;
  // const isTeenager = myAge >= 13 && myAge <= 19;
  // print(isTeenager);

  /**
   * Create another constant named maryAge and set it to 30 . Then, create a constant named bothTeenagers that uses Boolean logic to determine if both you and Mary are teenagers.
   */

  // const maryAge = 30;
  // const bothTeenagers =
  //     (myAge >= 13 && myAge <= 19) && (maryAge >= 13 && maryAge <= 19);
  // print(bothTeenagers);

  /**
   * Create a String constant named reader and set it to your name. Create another String constant named ray and set it to 'Ray Wenderlich' . Create a Boolean constant named rayIsReader that uses string equality to determine if reader and ray are equal
   */

  // const reader = "Joko";
  // const ray = "Ray Wenderlich";
  // const rayIsReader = reader == ray;
  // print(rayIsReader);

  // If Statements
  // if (2 > 1) {
  //   print("Yes, 2 is greater than 1");
  // }

  // The else Clause

// Elseif chains
  // const trafficLight = 'yellow';
  // var command = '';
  // if (trafficLight == 'red') {
  //   command = 'stop';
  // } else if (trafficLight == 'yellow') {
  //   command = 'slow down';
  // } else if (trafficLight == 'green') {
  //   command = 'go';
  // } else {
  //   command = 'invalid color';
  // }
  // print(command);

  // Variable Scope
  // const global = 'Hello, world';

  // void myFunction() {
  //   const localFunction = 'Hello, Dart';

  // if ( 2 > 1){
  //   const localIf = 'Hello, if';
  //   print(localIf);
  //   print(global);
  //   print(localFunction);
  // }

  //   print(global);
  //   print(localFunction);
  //   // print(localIf); // Not allowed
  // }

  // myFunction();

  // The Ternary Conditional Operator
  // Using if else
  // const score = 63;

  // String message;
  // if (score >= 60) {
  //   message = 'You passed';
  // } else {
  //   message = 'You failed';
  // }
  // print(message);

  // // Using Ternary
  // String message1 = score >= 60 ? 'You passed' : 'You failed';
  // print(message1);

  // Exercises
  /*
  Create a constant named myAge and initialize it with your age. Write an if statement to print out “Teenager”if your age is between 13 and 19 , and “Not a teenager” if your age is not between 13 and 19 .
  */

  // const myAge = 25;
  // if(13 <= myAge && myAge <= 19){
  //   print("Teenager");
  // } else{
  //   print("Not a teenager");
  // }

  // /**
  //  * Use a ternary conditional operator to replace the else-if statement that you used above. Set the result to a variable named answer .
  //  */

  // String answer = 13 <= myAge && myAge <= 19 ? "Teenager" : "Not a teenager";
  // print(answer);

  // Switch Statements
  // const number = 3;
  // switch (number) {
  //   case 0:
  //     print('It is 0');
  //     break;
  //   case 1:
  //     print('It is 1');
  //     break;
  //   case 2:
  //     print('It is 2');
  //     break;
  //   default:
  //     print('It is something else');
  // }

  // Swtiching on Strings
  // const weather = 'cloudy';
  // switch (weather) {
  //   case 'sunny':
  //     print("put on sunscreen");
  //     break;

  //   case 'snowy':
  //     print("Get your skis");
  //     break;

  //   case 'cloudy':
  //   case 'rainy':
  //     print("Bring an umbrella");
  //     break;

  //   default:
  //     print("I'm not familiar with that weather");

  // Enumerated Types
  // const weatherToday = Weather.cloudy;
  // switch (weatherToday) {
  //   case Weather.sunny:
  //     print("Put on sunscreen");
  //     break;
  //   case Weather.snowy:
  //     print("Get your skis");
  //     break;
  //   case Weather.cloudy:
  //   case Weather.rainy:
  //     print("Bring an umbrella");
  //     break;
  //   default:
  //     print("I'm not familiar with that weather");
  // }

  // Challenges
  // Chalenge 1: Find the Error
  // const firstName = 'Matt';
  // if (firstName == 'Bob') {
  //   const lastName = 'Smith';
  // } else if (firstName == 'Ray') {
  //   const lastName = 'Wenderlich';
  // }

  // final fullName = firstName + ' ' + lastName;
  // print(fullName);

  // Answer : The variable lastName are defined withitn their respective if statements. This means that they are not accessible outside of the if statements. To fix this, you can define the variables outside of the if statements.

  // Challenge 2: Boolean challenge
  // print(true && true);
  // print(false || false);
  // print((true && 1 != 2) || (4 > 3 && 100 < 1));
  // print(((10 / 2) > 3) && ((10 % 2) == 0));

  // Challenge 3 : Audio Enumeration
  // Make an enum called AudioState and give it values to represent playing , paused and stopped states
  const audioState = AudioState.playing;
  switch (audioState) {
    case AudioState.playing:
      print("Playing");
      break;
    case AudioState.paused:
      print("Paused");
      break;
    case AudioState.stopped:
      print("Stopped");
      break;
  }
}

// Enum must put outside of main function
enum Weather { sunny, snowy, cloudy, rainy }

enum AudioState { playing, paused, stopped }
