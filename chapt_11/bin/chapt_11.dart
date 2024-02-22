void main() {
  print('Chapter 11: Nullability');
  // print(isPositive(-3)); // false
  // print(isPositive(0)); // true
  // print(isPositive(3)); // true
  // print(isPositive(null));
  // Unhandled exception: NoSuchMethodError: The getter 'isNegative' was called on null. Receiver: null Tried calling: isNegative
  // When using dynamic type, the compiler does not check the type of the variable.
  // But when we use int type, the compiler will check the type of the variable and throw an exception if the variable is null.

  // String? name;
  // print(name.length); // The property 'length' can't be unconditionally accessed because the receiver can be 'null'.Try making the access conditional (using '?.') or adding a null check to the target ('!').

  // String? name;
  // name = 'Ray';
  // print(name.length); // 3
  // String? message;
  // final text = message ?? 'Error';
  // print(text); // Error
  // int? age;
  // print(age?.isNegative); // null
  // bool flowerIsBeautiful = isBeautiful('flower'); // A value of type 'bool?' can't be assigned to a variable of type 'bool'.

  // Using postfix operator
  // bool flowerIsBeautiful = isBeautiful('flower')!;
  // print(flowerIsBeautiful); // true

  // Using cast operator
  // bool flowerIsBeautiful = isBeautiful('flower') as bool;
  // print(flowerIsBeautiful); // true

  // User user = User()
  //   ..name = 'Ray'
  //   ..id = 1;
  // print(user.name); // Ray
  // print(user.id); // 1

  // User? user2;
  // user2
  //   ?..name = 'Ray'
  //   ..id = 1;

  // final user = User(name: null); // The argument type 'Null' can't be assigned to the parameter type 'String'.
}

// The late keyword
class User {
  User(this.name);

  final String name;
  // final int _secretNumber = _calculateSecret(); // The instance member '_calculateSecret' can't be accessed in an initializer.

  late final int _secretNumber = _calculateSecret();

  int _calculateSecret() {
    return name.length + 42;
  }
}


// class TextWidget {
//   String? text;
//   // Shadow the non-local variabel with local one
//   bool isLong() {
//     final text = this.text; // Shadowing
//     if (text == null) {
//       return false;
//     }
//     return text.length > 100;
//   }
// }



// class TextWidget{
//   String? text;
//   // Using ! operator
//   bool isLong(){
//     if(text == null){
//       return false;
//     } 
//     return text!.length > 100;
//   }

// }



// class TextWidget{
//   String? text;

//   bool isLong(){
//     if(text == null){
//       return false;
//     }

//     return text.length > 100; // The property 'length' can't be unconditionally accessed because the receiver can be 'null'.Try making the access conditional (using '?.') or adding a null check to the target ('!').
//   }
// }


// bool isLong(String? text) {
//   if (text == null) {
//     return false;
//   }
//   return text.length > 10;
// }


// bool isPositive(dynamic anInteger) {
//   return !anInteger.isNegative;
// }

// bool isPositive(int? anInteger) {
//   if (anInteger == null) {
//     return false;
//   }
//   return !anInteger.isNegative;
// }

// bool? isBeautiful(String? item) {
//   if (item == 'flower') {
//     return true;
//   } else if (item == 'garbage') {
//     return false;
//   }
//   return null;
// }

// class User {
//   String? name;
//   int? id;
// }


// class User{
//   User({required this.name});
//   String name;
// }