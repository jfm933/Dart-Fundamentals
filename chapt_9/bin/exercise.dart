/*
Given the following class:
class PhoneNumber {
 String value = '';
}
1 Make value a final variable, but not private.
2 Add a const constructor as the only way to initialize a PhoneNumber object
*/

// Solution:
// class PhoneNumber {
//   final String value;

//   const PhoneNumber(this.value);
// }

/*
Challenge 1: Bert and Ernie
Create a Student class with final firstName and lastName string properties and a variable
grade as an int property. Add a constructor to the class that initializes all the properties.
Add a method to the class that nicely formats a Student for printing. Use the class to create
students bert and ernie with grades of 95 and 85, respectively.
 */

class Student {
  Student(this.firstName, this.lastName, this.grade);

  final String firstName;
  final String lastName;
  final int grade;

  String toString() {
    return 'Student{firstName: $firstName, lastName: $lastName, grade: $grade}';
  }
}

void main() {
  final bert = Student('Bert', 'Smith', 95);
  final ernie = Student('Ernie', 'Jones', 85);
  print(bert);
  print(ernie);
}
