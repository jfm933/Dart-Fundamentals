import 'dart:io';

class User {
  // Long form constructor
  // User(int id, String name) {
  //   this.id = id;
  //   this.name = name;
  // }

  // Short form constructor
  // User(this.id, this.name);

  // Named constructor
  // User.anonymous() {
  //   this.id = 0;
  //   this.name = "Anonymous";
  // }

  // Forwarding constructor
  // User.anonymous() : this(0, "Anonymous");

  // Adding Named Parameters for User
  // User({int id = 0, String name = "Anonymous"})
  //     : _name = name,
  //       _id = id;

  // Making Classes Immutable
  const User({int id = 0, String name = "Anonymous"})
      : _name = name,
        _id = id;

  // User.anonymous() : this();

  const User.anonymous() : this();

  // int id = 0;
  // String name = "";

  // int _id;
  // String _name;

  final String _name;
  final int _id;

  String toJson() {
    return '{"id":$_id,"name":"$_name"}';
  }

  @override
  String toString() {
    return 'User{id: $_id, name: $_name}';
  }

  // Factory Constructors
  factory User.ray() {
    return User(id: 42, name: "Ray");
  }

  factory User.fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }
}

void main() {
  // print("Chapter 9: Constructors");
  // User jonas = User(1, "Jonas");
  // print(jonas);
  // final anonymousUser = User.anonymous();
  // print(anonymousUser); // User{id: 0, name: Anonymous}

  // final user = User(id: 5, name: "Jonas");
  // print(user); // User{id: 5, name: Jonas}

  // final vicki = User(id: 24, name: 'Vicki');
  // vicki.name = 'Nefarious Hacker';
  // print(vicki); // User{id: 24, name: Nefarious Hacker}

  // final vicki = User(id: 24, name: 'Vicki');
  // vicki._name = 'Nefarious Hacker';
  // print(vicki); // User{id: 24, name: Nefarious Hacker}

  // final vicki = User(id: 24, name: 'Vicki');
  // // vicki._name =
  // //     'Nefarious Hacker'; // '_name' can't be used as a setter because it's final. Try finding a different setter, or making '_name' non-final

  // print(vicki); // User{id: 24, name: Vicki}

  // const user = User(id: 5, name: "Jonas");
  // const anonymousUser = User.anonymous();
  // print(user); // User{id: 5, name: Jonas}
  // print(anonymousUser); // User{id: 0, name: Anonymous}

  // print(User.ray()); // User{id: 42, name: Ray}
  final map = {'id': 10, 'name': 'Sandra'};
  final sandra = User.fromJson(map);
  print(sandra); // User{id: 10, name: Sandra}
  print(sandra._id); // 10
  // print(sandra["name"]); // Error: The operator '[]' isn't defined for the class 'User'.
  print(sandra._name); // Sandra
}
