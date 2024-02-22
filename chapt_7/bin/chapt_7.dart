// String compliment(int number) {
//   return '$number is a very nice number';
// }

// void helloPersonAndPet(String person, String pet) {
//   print("Hello, $person, and your furry friend, $pet!");
// }

// String fullName(String first, String last, String title){
//   return '$title $first $last';
// }
// The thing is not everyone has a title, or wants to use their title, so our function need to be able to handle that. We can do this by making the title parameter optional. We do this by wrapping the parameter in square brackets, like so:

// String fullName(String first, String last, [String? title]) {
//   if (title != null) {
//     return '$title $first $last';
//   }
//   return '$first $last';
// }

// bool withinTolerance(int value, [int min = 0, int max = 10]) {
//   return min <= value && value <= max;
// }

// Naming Parameters
// bool withinTolerance(int value, {int min = 0, int max = 10}) {
//   return min <= value && value <= max;
// }

// Naming Required Parameters
// bool withinTolerance({required int value, int min = 0, int max = 10}) {
//   return min <= value && value <= max;
// }

void main() {
  // const input = 12;
  // final output = compliment(input);
  // print(output);
  // helloPersonAndPet("Fluffy", "Chris");
  // print(fullName("Joko", "Widodo"));
  // print(fullName("Joko", "Widodo", "Mr."));
  // print(withinTolerance(11, 1, 100)); // true
  // print(withinTolerance(11)); // false
  // print(withinTolerance(12, min: 12, max: 13)); // true
  // print(withinTolerance(15, max: 12, min: 13)); // false
  // print(withinTolerance(value: 10, min: 12, max: 13)); // false

  // Function with side effect
  // var myPreciousData = 5792;

  // String anInnoecntLookingFunction() {
  //   myPreciousData = 0;
  //   return "Hello";
  // }

  // print(myPreciousData); // 5792
  // print(anInnoecntLookingFunction());
  // // Calling the function has changed the value of myPreciousData
  // print(myPreciousData); // 0

  // Optional Types
  // String compliment(int number) {
  //   return '$number is a very nice number';
  // }

  // Other way
  // compliment(number) {
  //   return '$number is a very nice number';
  // }

  // print(compliment(12));

  // The following function is equivalent of what dart sees:
  // String compliment(dynamic number) {
  //   return '$number is a very nice number';
  // }

// Arrow function
// int add(int a, int b){
//   return a + b;
// }
// print(add(12, 14));

// Using arrow function
  // int add(int a, int b) => a + b;
  // print(add(15, 64));
}
