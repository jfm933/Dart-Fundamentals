import 'dart:convert';

/// Maps Exercise
///
/// 1. Create a map with the following keys: `name`, `profession`, `country`
///    and `city`. For the values, add your information.
/// 2. You decide to move to Toronto, Canada. Programmatically update
///    the values for `country` and `city`.
/// 3. Iterate over the map and print all the values.

// void main() {
//   final myMap = {
//     'name': 'John Doe',
//     'profession': 'Software Developer',
//     'country': 'USA',
//     'city': 'New York',
//   };

//   myMap['country'] = 'Canada';
//   myMap['city'] = 'Toronto';
//   for (var entry in myMap.entries) {
//     print('${entry.key}: ${entry.value}');
//   }
// }

/// Challenge 1: Counting on You
///
/// Write a function that takes a paragraph of text as a parameter. Count
/// the frequency of each character. Return this data as a map where the
/// key is the character and the value is the frequency count.

// void main() {
//   Map<String, int> countCharacterFrequency(String text) {
//     // Create an empty map to store the freuqency of each character
//     final Map<String, int> frequencyMap = {};

//     // Iterate over each character in the text
//     for (var char in text.split('')) {
//       if (frequencyMap.containsKey(char)) {
//         // If the character is already in the map, increment its count.
//         frequencyMap[char] = frequencyMap[char]! + 1;
//       } else {
//         // Otherwise, add the character to the map with a count fo 1.
//         frequencyMap[char] = 1;
//       }
//     }

//     return frequencyMap;
//   }

//   String paragraph = "Hello, I'm currently learning Dart and I'm enjoying it!";

//   Map<String, int> characterFrequency = countCharacterFrequency(paragraph);
//   print(characterFrequency);
// }

/// Challenge 2: To JSON and Back
///
/// Create an object from the following class:
///
/// ```dart
/// class Widget {
///   Widget(this.width, this.height);
///   final double width;
///   final double height;
/// }
/// ```
///
/// Then:
///
/// 1. Add a `toJson` method to `Widget`. It should return a map.
/// 2. Use `toJson` to convert your object to a map.
/// 3. Convert the map to a JSON string.
/// 4. Convert the JSON string back to a map.
/// 5. Add a `fromJson` factory constructor to `Widget`.
/// 6. Use `fromJson` to convert the map back to a widget object.

class Widget {
  Widget(this.width, this.height);
  final double width;
  final double height;

  // 1. Add a `toJson` method to `Widget`. It should return a map.
  Map<String, dynamic> toJson() {
    return {
      'width': width,
      'height': height,
    };
  }

  // 5. Add a `fromJson` factory constructor to `Widget`.
  factory Widget.fromJson(Map<String, dynamic> json) {
    return Widget(
      json['width'].toDouble(),
      json['height'].toDouble(),
    );
  }
}

void main() {
  Widget myWidget = Widget(100.0, 200.0);

  // 2. Use `toJson` to convert your object to a map.
  Map<String, dynamic> widgetMap = myWidget.toJson();

  // 3. Convert the map to a JSON string.
  String jsonString = jsonEncode(widgetMap);

  // 4. Convert the JSON string back to a map.
  Map<String, dynamic> jsonMap = jsonDecode(jsonString);

  // 6. Use `fromJson` to convert the map back to a widget object.
  Widget newWidget = Widget.fromJson(jsonMap);

  // Print the result to verify each step.
  print('Originial Widget: width=${myWidget.width}, height=${myWidget.height}');
  print('Widget Map: $widgetMap');
  print('Map to JSON String: $jsonString');
  print('JSON String to Map: $jsonMap');
  print(
      'Map to New Widget: width=${newWidget.width}, height=${newWidget.height}');
}
