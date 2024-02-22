import 'package:chapt_15/squares.dart';

void main() {
  print("Chapter 5: Iterables");

  // Reviewing List Iteration
  // final myList = ['bread', 'cheese', 'milk'];
  // // print(myList);

  // // for (final item in myList) {
  // //   print(item);
  // // }

  // // Meeting iterable
  // final reversedIterable = myList.reversed;
  // print(reversedIterable); // Type: iterables
  // // Output: (milk, cheese, bread)

  // // Converting an Iterable to a List
  // final reversedList = reversedIterable.toList();
  // print(reversedList);

  // Operations on Iterables
  // final myIterable = Iterable(); // Abstract class Abstract classes can't be instantiated.

  // Iterable<String> myIterable = ['red', 'blue', 'green'];
  // print(myIterable);

  // // Accessing Elements
  // final thirdElement = myIterable.elementAt(2);
  // print(thirdElement);

  // // Finding the First and Last Elements
  // final firstElement = myIterable.first;
  // print(firstElement);

  // final lastElement = myIterable.last;
  // print(lastElement);

  // // Getting the length
  // final numberElements = myIterable.length;
  // print(numberElements);

  // Creating an Iterable From Scratch
  // Using a Generator
  // Creating a Synchonous Generator

  // Iterable<int> hundredSquares() sync* {
  //   for (int i = 1; i <= 100; i++) {
  //     yield i * i;
  //   }
  // }

  // final squares = hundredSquares();

  // for (int square in squares) {
  //   print(square);
  // }

  final squares = HundredSquares();
  for (int square in squares) {
    print(square);
  }
}
