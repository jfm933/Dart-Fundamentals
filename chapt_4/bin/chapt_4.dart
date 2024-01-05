import 'package:characters/characters.dart';

void main() {
  // print('Hello World');
  // var greeting = 'Hello World';
  // print(greeting);

  // var greeting = 'Hello, Dart';
  // greeting = 'Hello, Flutter';
  // print(greeting);

  // var greeting = 'Hello, Dart';
  // greeting = 5; // Error: A value of type 'int' can't be assigned to a variable of type 'String'.

// Dart strings are collection of UTF-16 code units.
  // var salutation = 'Hello';
  // print(salutation.codeUnits);

// UTF has a special way of encoding code points higher than 65536 by using two code units called surrogate pairs.
  // const dart = '🎯';
  // // print(dart.codeUnits);

  // // to get Unicode code points directly, we can use runes.
  // print(dart.runes);

// Dart uses a pair of code points called regional indicator symbols to represent a flag.
  // const flag = '🇲🇳';
  // print(flag.runes); //(127474, 127475)

// That list of Unicode code points is a man, a woman, a girl, and a boy all glued together with a character called zero width joiner.
  // const family = '👨‍👩‍👧‍👦';
  // // print(family.runes); // (128104, 8205, 128105, 8205, 128103, 8205, 128102)
  // // print(family.length); // 11
  // // print(family.codeUnits.length); // 11
  // // print(family.runes.length); // 7

  // // when a string with multiple code points looks like a single character, this is known as a user-perceived character. In technical terms, it's called a Unicode extended grapheme cluster, or more commonly, a grapheme cluster.
  // print(family.characters.length); // 1

  // String interpolation
  // const name = 'Ray';
  // const introduction = 'Hello my name is $name';
  // print(introduction); // Hello my name is Ray

  // const oneThird = 1 / 3;
  // // const sentence = 'One third is $oneThird';
  // // print(sentence); // One third is 0.3333333333333333

  // final sentence = 'One third is ${oneThird.toStringAsFixed(3)}';
  // print(sentence); // One third is 0.333

  // Exercises
  // 1. Create a string constant called firstName and initialize it to your first name. Also create a string constant called lastName and initialize it to your last name.
  // const firstName = 'Joko';
  // const lastName = 'Widodo';

  // // 2. Create a string constant called fullName by adding the firstName and lastName constants together,separated by a space
  // const fullName = '$firstName' + ' ' + '$lastName';
  // print(fullName); // Joko Widodo

  // // 3. Using interpolation, create a string constant called myDetails that uses the fullName constant to create a string introducing yourself. For example, Ray Wenderlich’s string would read: Hello, my name is Ray Wenderlich.
  // const introduction = 'Hello, my name is $fullName';
  // print(introduction); // Hello, my name is Joko Widodo

  // Multiline Strings
  // const bigString = '''
  // You can have a string
  // that contains multiple lines
  // by doing this.
  // ''';
  // print(bigString);

  // other way
  // const oneLine = 'This is only '
  //     'a single '
  //     'line '
  //     'at runtime.';
  // print(oneLine);

  // to insert a newline character into a string, you can use the escape sequence \n.
  // const twoLines = 'This is\ntwo lines.';
  // print(twoLines);

  // to ignore any special characters in a string, you can use a raw string.
  // const rawString = r'In a raw string, not even \n gets special treatment.';
  // print(rawString);

  // print('I \u2764 Dart\u0021'); // I ❤ Dart!

  // // for code points with values higher than hexadecimal FFFF, you need to surround the code point with curly braces.
  // print('I love \u{1F3AF}'); // I love 🎯

  // Challenge 1: Same Same, but Different

// This string has two flags that look the same. But they aren’t! One of them is the flag of Chadand the other is the flag of Romania.

// const twoCountries = '🇹🇩🇷🇴';

// Which is which?

// Hint: Romania’s regional indicator sequence is RO , and R is 127479 in decimal. Chad, which is Tishād in Arabic and Tchad in French, has a regional indicator sequence of TD . Sequence letter T is 127481 in decimal

  // const twoCountries = '🇹🇩🇷🇴';

  // final firstFlag = twoCountries.runes.toList()[0];
  // final secondFlag = twoCountries.runes.toList()[2];

  // final firstCountryUnicode = String.fromCharCode(firstFlag).runes.single;
  // final secondCountryUnicode = String.fromCharCode(secondFlag).runes.single;

  // var firstCountry;
  // var secondCountry;

  // if (firstCountryUnicode == 127479) {
  //   firstCountry = 'Romania';
  // } else if (firstCountryUnicode == 127481) {
  //   firstCountry = 'Chad';
  // }

  // if (secondCountryUnicode == 127479) {
  //   secondCountry = 'Romania';
  // } else if (secondCountryUnicode == 127481) {
  //   secondCountry = 'Chad';
  // }

  // print(
  //     'The first flag is from $firstCountry and the second flag is from $secondCountry');

  // Challenge 2: How Many?
// Given the following string:
// const vote = 'Thumbs up!👍🏿';
// How many UTF-16 code units are there?
// How many Unicode code points are there?
// How many Unicode grapheme clusters are there?

  // const vote = 'Thumbs up!👍🏿';

  // int utf16CodeUnits = vote.codeUnits.length;
  // print('UTF-16 code units: $utf16CodeUnits');

  // int unicodeCodePoints = vote.runes.length;
  // print('Unicode code points: $unicodeCodePoints');

  // int unicodeGraphemeClusters = vote.characters.length;
  // print('Unicode grapheme clusters: $unicodeGraphemeClusters');

  // const number = 10;
  // const multiplier = 5;
  // final summary = '$number \u00D7 $multiplier = ${number * multiplier}';

  // print(summary); // 10 × 5 = 50
}
