import 'dart:convert';

void main() {
  print('Chapter 14: Maps');

  // final Map<String, int> emptyMap = {};
  // Other Way
  // final emptyMap = <String, int>{};

  // final emptySomething = {}; // This is a Map<dynamic, dynamic>

  // // If we want a set rather than a map, we can use the following syntax:
  // final emptySet = <String>{};

  // final inventory = {
  //   'cakes': 20,
  //   'pies': 14,
  //   'donuts': 35,
  //   'cookies': 141,
  // };

  // final digitToWord = {
  //   1: 'one',
  //   2: 'two',
  //   3: 'three',
  //   4: 'four',
  // };

  // print(inventory);
  // print(digitToWord);

  // Unique keys
  // final treasureMap = {
  //   'garbage': 'in the dumpster',
  //   'glasses': 'on your head',
  //   'gold' : 'in the cave',
  //   'gold': 'under your mattress', // This will overwrite the previous value
  // };

  // TO fix this we can use the following syntax
  // final treasureMap = {
  //   'garbage': ['in the dumpster'],
  //   'glasses': ['on your head'],
  //   'gold' : ['in the cave', 'under your mattress'],
  // };

  // Values don't have that some restriction of being unique. THis is fine:
  // final myHouse = {
  //   'bedroom': 'messy',
  //   'kitchen': 'messy',
  //   'living room': 'messy',
  //   'code': 'clean',
  // };

  // Operations on a Map
  // final inventory = {
  //   'cakes': 20,
  //   'pies': 14,
  //   'donuts': 35,
  //   'cookies': 141,
  // };

  // // Accessing Key-Value Pairs
  // final numberOfCakes = inventory['cakes'];
  // print('We have $numberOfCakes cakes.');

  // // A map will return null if the key doesn't exist.
  // print(numberOfCakes?.isEven);

  // // Adding Elements to a Map
  // inventory['brownies'] = 3;

  // print(
  //     inventory); // {cakes: 20, pies: 14, donuts: 35, cookies: 141, brownies: 3}

  // // Updating an Element
  // inventory['cakes'] = 25;

  // print(
  //     inventory); // {cakes: 25, pies: 14, donuts: 35, cookies: 141, brownies: 3}

  // // Removing Elements From a Map
  // inventory.remove('cookies');
  // print(inventory); // {cakes: 25, pies: 14, donuts: 35, brownies: 3}

  // // Accessing Properties
  // print(inventory.length); // 4
  // print(inventory.isEmpty); // false
  // print(inventory.isNotEmpty); // true

  // // Accesing keys and values seperately
  // print(inventory.keys); // (cakes, pies, donuts, brownies)
  // print(inventory.values); // (25, 14, 35, 3)

  // // Checking for Key or Value Existence
  // print(inventory.containsKey('pies')); // true
  // print(inventory.containsValue(14)); // true
  // print(inventory.containsValue(15)); // false

  // Looping Over Elements of a Map

  // for(var item in inventory){
  //   print(inventory[item]);
  // } // This will produced an error:
  // The type 'Map<String, int>' used in the 'for' loop must implement 'Iterable'

  // To fix this we can use Map forEach
  // for (var key in inventory.keys) {
  //   print(inventory[key]);
  // }
  // Output:
  // 25
  // 14
  // 35
  // 3

  // We can also use entries to iterate over the elemtns of a map, which gives us both the keys and the values:
  // for (final entry in inventory.entries) {
  //   print('${entry.key} -> ${entry.value}');
  // }

  final userObject = User(id: 1234, name: 'John Doe', emails: [
    'john@example.com',
    'jhagemann@example.com',
  ]);

//  final userMap = (
//   'id': 1234,
//   'name': 'John Doe',
//   'emails': [
//     'john@example.com',
//     'jhagemann@example.com'],
//  );

  final userMap = userObject.toJson();
  print(
      userMap); //{id: 1234, name: John Doe, emails: [john@example.com, jhagemann@example.com]}

  // Converting a Map to a JSON String
  final userString = jsonEncode(userMap);
  print(
      userString); //{"id":1234,"name":"John Doe","emails":["john@example.com","jhagemann@example.com"]}

  // Converting a JSON String to a Map
  final jsonString =
      '{ "id": 4321,"name": "Marcia","emails": ["marcia@example.com"]}';
  final jsonMap = jsonDecode(jsonString);
  print(jsonMap);

  final userMarcia = User.fromJson(jsonMap);
  print(
      userMarcia); // User{id: 4321, name: Marcia, emails: [marcia@example.com]}
}

// Converting an Objet to a Map
class User {
  const User({
    required this.id,
    required this.name,
    required this.emails,
  });

  final int id;
  final String name;
  final List<String> emails;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'emails': emails,
    };
  }

  // Converting a Map to an Object
  factory User.fromJson(Map<String, dynamic> jsonMap) {
    dynamic id = jsonMap['id'];
    if (id is! int) id = 0;

    dynamic name = jsonMap['name'];
    if (name is! String) name = '';

    dynamic maybeEmails = jsonMap['emails'];
    final emails = <String>[];
    if (maybeEmails is List) {
      for (dynamic email in maybeEmails) {
        if (email is String) emails.add(email);
      }
    }

    return User(
      id: id,
      name: name,
      emails: emails,
    );
  }

  @override
  String toString() {
    return 'User{id: $id, name: $name, emails: $emails}';
  }
}
