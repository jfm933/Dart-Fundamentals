// import 'package:chapt_10/math.dart';
// import 'package:chapt_10/math.dart' as math;

class SomeClass {
  static int myProperty = 0;
  static void myMethod() {
    print("Hello from myMethod");
  }
}

class MyClass {
  int instanceVariable = 10;

  void instanceMethod() {
    print('Instance method called');
  }
}

// Constants
class TextStyle {
  static const _defaultFontSize = 17.0;

  TextStyle({this.fontSize = _defaultFontSize});
  final double fontSize;
}

class Colors {
  static const int red = 0xFFD13F13;
  static const int purple = 0xFF8107D9;
  static const int blue = 0xFF1432C9;
}

// Singleton Pattern
// class MySingleton {
//   MySingleton._();
//   static final MySingleton instance = MySingleton._();
// }

class MySingleton2 {
  MySingleton2._();
  static final MySingleton2 instance = MySingleton2._();
  factory MySingleton2() => instance;
}

// Static Methods
// Utility Methods

// class Math {
//   static num max(num a, num b) {
//     return a > b ? a : b;
//   }

//   static num min(num a, num b) {
//     return a < b ? a : b;
//   }
// }

// Creating New Objects
class User {
  final int? id;
  final String? name;
  final String? email;
  User({this.id, this.name, this.email});

  static User fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }
}

void main() {
  print("Chapter 10 : Static Members");
  print("----------------------------");
  // print("SomeClass.myProperty = ${SomeClass.myProperty}");
  // SomeClass.myMethod();

  // var obj1 = MyClass();
  // print("obj1.instanceVariable ${obj1.instanceVariable}"); // 10
  // obj1.instanceMethod(); // Instance method called

  // final backgroundColor = Colors.purple;
  // print("backgroundColor = $backgroundColor");

  // final mySingleton = MySingleton.instance;
  // print("mySingleton = $mySingleton");

  var singleton1 = MySingleton2();
  var singleton2 = MySingleton2();

  print(singleton1 == singleton2); // true
  // print(min(5, 20)); // 5
  // print(max(5, 20)); // 20

  // print(math.max(5, 20)); // 20
  // print(math.min(5, 20)); // 5

  final map = {"id": 1, "name": "John", "email": "John@gmail.com"};
  final john = User.fromJson(map);
  print(john.email); // John@gmail.com
  print(john.name); // John
  print(john.id); // 1
}
