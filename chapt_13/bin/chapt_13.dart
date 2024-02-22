import 'dart:math';

void main() {
  print("Chapter 13: Sets");
  // Set is a collection of unique items
  // final Set<int> someSet = {};

  // Other way
  // final someSet2 = <int>{};

  // final anotherSet = {1, 2, 3, 1};
  // print(anotherSet); // {1, 2, 3}

  // Operations on a Set
  // Checking the Contents
  // final desserts = {'cookies', 'ice cream', 'donuts'};
  // print(desserts.contains('cookies')); // true
  // print(desserts.contains('cake')); // false

  // Adding Single Elements
  // final drinks = <String>{};
  // drinks.add('cola');
  // drinks.add('fanta');
  // drinks.add('sprite');
  // drinks.add('cola');
  // print(drinks); // {cola, fanta, sprite}

  // // Removing Elements
  // drinks.remove('fanta');
  // print(drinks); // {cola, sprite}

  // // Adding Multiple Elements
  // drinks.addAll(['pepsi', '7up']);
  // print(drinks); // {cola, sprite, pepsi, 7up}

  // Looping Over the Elements
  // for (final drink in drinks) {
  //   print("I'm drinking $drink");
  // }

  // Copying Sets
  // Bad way to copy a set
  // final beverages = drinks;
  // print(drinks); // {cola, sprite, pepsi, 7up}

  // beverages.remove('pepsi');
  // print(beverages); // {cola, sprite, 7up}
  // print(drinks); // {cola, sprite, 7up}

  // Good way to copy a set
  // final liquids = drinks.toSet();
  // print(drinks); // {cola, sprite, pepsi, 7up}

  // liquids.remove('pepsi');
  // print(drinks); // {cola, sprite, pepsi, 7up}
  // print(liquids); // {cola, sprite, 7up}

  // Intersections
  // final setA = {8, 2, 3, 1, 4};
  // final setB = {1, 6, 5, 4};

  // final intersection = setA.intersection(setB);
  // print(intersection); // {1, 4}

  // // Unions
  // final union = setA.union(setB);
  // print(union);

  // // Difference
  // final differenceA = setA.difference(setB);
  // print(differenceA); // {8, 2, 3}

  // final differenceB = setB.difference(setA);
  // print(differenceB); // {6, 5}

  // Finding Duplicates
  // Random Number Generation

  // final randomGenerator = Random();
  // final randomIntList = <int>[];

  // for (int i = 0; i < 10; i++) {
  //   final randomInt = randomGenerator.nextInt(10) + 1;
  //   randomIntList.add(randomInt);
  // }

  // print(randomIntList);

  // // Finding Duplicate Integers in the List
  // final uniqueValues = <int>{};
  // final duplicates = <int>{};

  // for (int number in randomIntList) {
  //   if (uniqueValues.contains(number)) {
  //     duplicates.add(number);
  //   }
  //   uniqueValues.add(number);
  // }

  // print(uniqueValues);
  // print(duplicates);
}
