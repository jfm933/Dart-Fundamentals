import 'dart:math';
// this is a comment. It is not executed.

// this is also a comment,
// but it is a multi-line comment.

/* this is also a comment. Over many...
many...
many lines. */

/* This is a comment.
/* And inside it is
another comment. */
Back to the first. */

/// This is a documentation comment. A documentation comment

/**
 * This is also a documentation comment.
 */

void main() {
  // print('Hello Dart!');
  // print(2 + 6);

//   Exercise
// Print the value of 1 over the square root of 2 . Confirm that it equals the sine of 45° .
  // var result = 1 / sqrt(2);
  // print('1 over the square root of 2 is $result');

  // var radians = 45 * (pi / 180);
  // var sineOf45 = sin(radians);

  // print('The sine of 45° is $sineOf45');

  // Confirm if they are equal
  // Note : Due to floating point precision, it is better to check if the numbers are close enough.
  // const epsilon = 1e-10;
  // if ((result - sineOf45).abs() < epsilon) {
  //   print('They are equal');
  // } else {
  //   print('They are not equal');
  // }

  // Variables
  // int number = 10;
  // number = 15;

  // double apple = 3.14159;

  // print(10.isEven);
  // print(3.14159.round());

  // int myInteger = 10;
  // myInteger = 3.1454549; // Error: A value of type 'double' can't be assigned to a variable of type 'int'.

  // num myNumber;
  // myNumber = 10; // OK
  // myNumber = 3.154545; // OK
  // myNumber = 'Ten'; // No, no, no

  // dynamic myVariable;
  // myVariable = 10; // OK
  // myVariable = 3.14159; // OK
  // myVariable = "ten"; // OK

  // var someNumber = 10;
  // someNumber = 16; // OK
  // someNumber = 3.1519; // NO, no , no

  // Constants
  // const myConstant = 10;
  // myConstant = 20; // Error: Can't assign to the const variable 'myConstant'.

  // final hoursSinceMidnight = DateTime.now().hour;
  // print(hoursSinceMidnight);

  // hoursSinceMidnight = 0; // The final variable 'hoursSinceMidnight' can only be set once.Try making 'hoursSinceMidnight' non-final
  // print(hoursSinceMidnight);

  // Exercises
// If you haven’t been following along with these exercises in VS Code, now’s the time to
// create a new project and try some exercises to test yourself!
// 1
// Declare a constant of type int called myAge and set it to your age.
// 2
// Declare a variable of type double called averageAge . Initially, set the variable to your own age. Then, set it to
// the average of your age and your best friend’s age.
// 3
// Create a constant called testNumber and initialize it with whatever integer you’d like. Next, create another
// constant called evenOdd and set it equal to testNumber modulo 2 . Now change testNumber to various
// numbers. What do you notice about evenOdd ?

  // int myAge = 18;
  // double averageAge = myAge + 18 / 2;
  // const testNumber = 238;
  // const evenOdd = testNumber % 2;

  // Increment and Decrememnt
  // var counter = 0;

  // counter += 1;
  // // counter = 1;

  // counter -= 1;
  // // counter = 0;

  // double myValue = 10;

  // myValue *= 3; // same as myValue = myValue * 3;
  // // myValue = 30;

  // myValue /= 2; // same as myValue = myValue / 2;
  // // myValue = 15;

//   Challenges
// Before moving on, here are some challenges to test your knowledge of variables and
// constants. It’s best if you try to solve them yourself, but solutions are available with the
// supplementary materials for this book if you get stuck

// Challenge 1: Variable Dogs
// Declare an int variable called dogs and set that equal to the number of dogs you own.
// Then imagine you bought a new puppy and increment the dogs variable by one

  int dogs = 2;
  dogs += 1;
  print(dogs);

//   Challenge 2: Make It Compile
// Given the following code:
// age = 16;
// print(age);
// age = 30;
// print(age);
// Modify the first line so that the code compiles. Did you use var , int , final or const ?

  int age = 16;
  print(age);
  age = 30;
  print(age);

//   Challenge 5: Quadratic Equations
// A quadratic equation is something of the form
// a⋅x² + b⋅x + c = 0 .
// The values of x which satisfy this can be solved by using the equation
// x = (-b ± sqrt(b² - 4⋅a⋅c)) / (2⋅a) .
// Declare three constants named a , b and c of type double . Then calculate the two
// values for x using the equation above (noting that the ± means plus or minus, so one
// value of x for each). Store the results in constants called root1 and root2 of type double .

  const double a = 1.0;
  const double b = -3.0;
  const double c = 2.0;

  double discriminant = pow(b, 2) - 4 * a * c;

  double root1 = (-b + sqrt(discriminant)) / (2 * a);
  double root2 = (-b - sqrt(discriminant)) / (2 * a);

  print("root1 = $root1");
  print("root2 = $root2");
}
