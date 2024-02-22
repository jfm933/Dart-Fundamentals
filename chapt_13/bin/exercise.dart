/// Set Operations Exercise
///
/// 1. Create an empty set of type `String`, and name it `animals`.
/// 2. Add three animals to it.
/// 3. Check if the set contains `'sheep'`.
/// 4. Remove one of the animals.

// void main() {
//   final animals = <String>{}; // Step 1
//   animals.addAll(['cat', 'dog', 'sheep']); // Step 2
//   animals.contains('sheep'); // Step 3
//   animals.remove('cat'); // Step 4

//   print(animals); // {dog, sheep}
// }

/// Intersections and Unions Exercise
///
/// Find the intersection and union of the following three sets:
///
/// ```dart
/// final nullSafe = {'Swift', 'Dart', 'Kotlin'};
/// final pointy = {'Sword', 'Pencil', 'Dart'};
/// final dWords = {'Dart', 'Dragon', 'Double'};
/// ```

// void main() {
//   final nullSafe = {'Swift', 'Dart', 'Kotlin'};
//   final pointy = {'Sword', 'Pencil', 'Dart'};
//   final dWords = {'Dart', 'Dragon', 'Double'};

//   final intersection = nullSafe.intersection(pointy.intersection(dWords));
//   print(intersection); // {Dart}

//   final union = nullSafe.union(pointy.union(dWords));
//   print(union); // {Dart, Kotlin, Sword, Pencil, Dragon, Double, Swift}
// }

/// Challenge 1: A Unique Request
///
/// Write a function that takes a paragraph of text and returns a
/// collection of unique String characters that the text contains.
///
/// Hint: Use `String.fromCharCode` to convert a code point back to a string.

// void main() {
//   Set<String> uniqueCharacters(String paragraph) {
//     Set<String> uniqueChars = Set();

//     for (int codePoint in paragraph.runes) {
//       uniqueChars.add(String.fromCharCode(codePoint));
//     }

//     return uniqueChars;
//   }

//   String text =
//       "Hello, this is a test paragraph to extract unique characters from.";
//   Set<String> uniqueChars = uniqueCharacters(text);
//   print(uniqueChars);
// }

/// Challenge 2: Symmetric Difference
///
/// Earlier in the chapter, you found the intersection and the union of the
/// following sets:
///
/// ```dart
/// final setA = {8, 2, 3, 1, 4};
/// final setB = {1, 6, 5, 4};
/// ```
///
/// How would you find the set of all values that are unique to each set,
/// that is, everything but the duplicates `1` and `4`:
///
/// ```text
/// {8, 2, 3, 6, 5}
/// ```

void main() {
  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};

  Set<int> symmetricDifference(Set<int> setA, Set<int> setB) {
    Set<int> unionSet = setA.union(setB);
    Set<int> intersectionSet = setA.intersection(setB);
    return unionSet.difference(intersectionSet);
  }

  print(symmetricDifference(setA, setB)); // {8, 2, 3, 6, 5}
}
