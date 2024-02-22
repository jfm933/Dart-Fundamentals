class User {
  int id = 0;
  String name = "";

  String toJson() {
    return '{"id": $id, "name": "$name"}';
  }

  @override
  String toString() {
    return "User: $name ($id)";
  }
}

class Password {
  String _plainText = 'pass123';

  // String getPlainText() {
  //   return _plainText;
  // }

  String getPlainText() => _plainText;

  String get obfuscated {
    final length = _plainText.length;
    return '*' * length;
  }

  // set plainText(String text) {
  //   _plainText = text;
  // }

  set plainText(String text) {
    if (text.length < 6) {
      print("Password must be at least 6 characters");
      return;
    }

    _plainText = text;
  }
}

void main() {
  print("Chapter 8. Classes");

  // final user = User();
  // user.name = "Ray";
  // user.id = 42;

  // print("User: ${user.name} (${user.id})"); // User: Ray (42)
  // print(user); // User: Ray (42)
  // print(user.toJson()); // {"id": 42, "name": "Ray"}

  // // Cascade Notation
  // final user2 = User()
  //   ..name = "Ray"
  //   ..id = 42;
  // print(user2); // User: Ray (42)
  // print(user2.toJson()); // {"id": 42, "name": "Ray"}

  // final myPassword = Password();
  // // final text = myPassword.getPlainText();
  // // print(text); // pass123
  // // myPassword.plainText = "new password";
  // // final text = myPassword.obfuscated;
  // // print(text); // *******
  // myPassword.plainText = "new password";
  // final text = myPassword.getPlainText();
  // print(text); // new password

  final shortPassword = Password();
  shortPassword.plainText = "123";
  final result = shortPassword.getPlainText();
  print(result);
  // Output:
  // Password must be at least 6 characters
  // pass123
}
