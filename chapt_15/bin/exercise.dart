// void main() {
//   // 1. Create a map of key-value pairs.
//   var myMap = {
//     'first': 'apple',
//     'second': 'banana',
//     'third': 'cherry',
//     'fourth': 'durian',
//     'fifth': 'elderberry',
//   };

//   // 2. Make a variable named `myIterable` and assign it the `keys` of    your map.

//   Iterable<String> myIterable = myMap.keys;

//   // 3. Print the third element.
//   print(myIterable.elementAt(2));

//   // 4. Print the first and last elements.
//   print(myIterable.first);
//   print(myIterable.last);

//   // 5. Print the length of the iterable.
//   print(myIterable.length);

//   // 6. Loop through the iterable with a `for-in` loop.
//   for (var key in myIterable) {
//     print(key);
//   }
// }

/*
/// Challenge 1: Iterating by Hand
///
/// 1. Create a list named `myList` and populate it with four values.
/// 2. Use `myList.iterator` to access the iterator.
/// 3. Manually step through the list using `moveNext`, and print each value
///    using `current`.
 */

// void main() {
//   List<int> myList = [1, 2, 3, 4];

//   Iterator<int> iterator = myList.iterator;

//   while (iterator.moveNext()) {
//     print(iterator.current);
//   }
// }

import 'dart:collection';

/// Challenge 2: Fibonacci to Infinity
///
/// Create a custom iterable collection that contains all of the
/// Fibonacci numbers. Add an optional constructor parameter that
/// will stop iteration after the nth number.

class FibonacciSequence extends Iterable<int> {
  final int maxCount;

  FibonacciSequence([this.maxCount = -1]);

  @override
  Iterator<int> get iterator => FibonacciIterator(maxCount);
}

class FibonacciIterator implements Iterator<int> {
  final int maxCount;
  int _current = 0, _next = 1;
  int _index = 0;

  FibonacciIterator(this.maxCount);

  int get current => _current;

  bool moveNext() {
    if (maxCount != -1 && _index >= maxCount) {
      return false;
    }
    if (_index == 0) {
      return true;
    }

    int temp = _current;
    _current = _next;
    _next = temp + _next;
    _index++;
    return true;
  }
}

void main() {
  var infiniteFibonacci = FibonacciSequence();
  print(infiniteFibonacci.take(10).toList());

  var finiteFibonacci = FibonacciSequence(5);
  print(finiteFibonacci.toList());
}
