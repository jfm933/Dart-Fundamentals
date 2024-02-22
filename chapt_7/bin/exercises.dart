import 'dart:math';

void main() {
  // print("Hello World");
  /**
   * Write a function named youAreWonderful , with a string parameter called name . It should return a string using name , and say something like “You’re wonderful, Bob.”
   */

  // String youAreWonderful(String name) {
  //   return "You're wonderful, $name";
  // }

  // print(youAreWonderful("Bob"));

  /**
   * Add another int parameter to that function called numberPeople so that the function returns something like “You’re wonderful, Bob. 10 people think so.”
   */

  // String numberPeople(String name, int numberPeople) {
  //   return "You're wonderful, $name. $numberPeople people think so.";
  // }

  // print(numberPeople("Bob", 10));

  /**
   * Make both inputs named parameters. Make name required and set numberPeople to have a default of 30 .
   */

  // String numberPeople({required String name, int numberPeople = 10}) {
  //   return "You're wonderful, $name. $numberPeople people think so.";
  // }

  // print(numberPeople(name: "Bob", numberPeople: 10));

  /**
   * Challenge 1: Circular Area
Write a function that tells you the area of a circle based on some input radius. If you recall
from geometry class, you can find the area of a circle by multiplying pi times the radius
squared.
   */

  // double circleArea(double radius) {
  //   return 3.14 * radius * radius;
  // }

  // print(circleArea(10)); // 314.0

  /**
   * Challenge 2: Prime Time
Write a function that checks if a number is prime.
First, write a function with the following signature to determine if one number is divisible
by another:
bool isNumberDivisible(int number, int divisor)
The modulo operator % will help with that.
Then, write the function that returns true if prime and false otherwise:
bool isPrime(int number)
A number is prime if it’s only divisible by 1 and itself. Loop through the numbers from 1 to
the number and find the number’s divisors. If it has any divisors other than 1 and itself,
it’s not prime.
Check the following cases:
isPrime(6); // false
isPrime(13); // true
isPrime(8893); // true
Here are a few more hints:
Numbers less than zero are not considered prime.
Use a for loop to look for divisors. You can start at 2 and if you end before the number, return false.
If you’re clever, you can loop from 2 until you reach the square root of the number. Add the following import to the
top of the file to access the sqrt function:
import 'dart:math';
   */

  bool isNumberDivisible(int number, int divisor) {
    return number % divisor == 0;
  }

  bool isPrime(int number) {
    if (number <= 1) {
      return false;
    }

    if (number == 2) {
      return true;
    }

    for (int i = 2; i <= sqrt(number).toInt(); i++) {
      if (isNumberDivisible(number, i)) {
        return false;
      }
    }
    return true;
  }

  print(isPrime(6));
  print(isPrime(13));
  print(isPrime(8893));
}
