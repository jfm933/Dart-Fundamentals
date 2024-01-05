void main() {
  // int myInteger = 10;
  // double myDouble = 3.14;

  // const int myInteger = 10;
  // const double myDouble = 3.14;

  // num myNumber = 3.14;
  // print(myNumber is double);
  // print(myNumber is int);
  // print(myNumber.runtimeType);

  // var integer = 100;
  // var decimal = 12.5;
  // integer = decimal; // a value of type 'double' can't be assigned to a variable of type 'int';

  // integer = decimal.toInt(); // We need to explicitly convert the decimal to an integer

  // const hourlyRate = 19.5;
  // const hourWorked = 10;
  // const totalCost = hourlyRate * hourWorked;
  // print(totalCost); // 195.0

  // const wantADouble = 3;
  // final actuallyDouble = 3.toDouble();

  // const double actuallyDouble = 3;
  // num someNumber = 3;
  // // print(someNumber.isEven); // The getter 'isEven' isn't defined for the type 'num'.Try importing the library that defines 'isEven', correcting the name to the name of an existing getter, or defining a getter or field named 'isEven'

  // final someInt = someNumber as int;
  // print(someInt.isEven); // the as keyword causes compiler to recognize someInt aas an int, so your code is now able to use the isEven property tha tbelongs to int type. Since 3 isn't even, the result is false.

  // num someNumber = 3;
  // // final someDouble = someNumber as double;
  // // print(
  // //     someDouble); // The runtime type of someNumber is int, not double. In Dart, you're not allowed to cast to a sibling type, such as int to double. You can only cast down to subtype.

  // final someDouble = someNumber.toDouble();
  // print(someDouble); // 3.0

  // Exercises
//   Create a constant called age1 and set it equal to 42 . Create another constant called age2 and set it equal
// to 21 . Check that the type for both constants has been inferred correctly as int by hovering your mouse
// pointer over the variable names in VS Code.

  // const age1 = 42;
  // const age2 = 21;
  // // Type inference - hover over variable names in VS Code to check their types

  // // Create a constant called averageAge and set it equal to the average of age1 and age2 using the operation (age1 + age2) / 2 . Hover your mouse pointer over averageAge to check the type. Then check the result of averageAge . Why is it a double if the components are all int ?
  // const averageAge = (age1 + age2) / 2;
  // Object? myVariable = 42;
  // myVariable = "Hello"; // OK
  // print(myVariable);

//   const grade = 90;
//   const homework = 80;
//   const exam = 94;

//   const totalGrade = grade * 0.2 + homework * 0.3 + exam * 0.5;
//   print(totalGrade.floor());

  const value = 10 / 2;
  print(value);
}
