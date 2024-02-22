// Exercises
//  Ceate a list of type String and name it months .
//  Use the add method to add the names of the twelve months.
//  Find the index of March in the list.
//  Use the index to remove March.
//  Insert March back in at the correct position.
//  Print the list after each change to ensure your code is correct.

// void main() {
//   List<String> months = [];
//   List<String> allMonths = [
//     "January",
//     "February",
//     "March",
//     "April",
//     "May",
//     "June",
//     "July",
//     "August",
//     "September",
//     "October",
//     "November",
//     "December"
//   ];

//   for (String month in allMonths) {
//     months.add(month);
//   }

//   int marchIndex = months.indexOf("March");

//   months.removeAt(marchIndex);

//   months.insert(marchIndex, "March");

//   print(months);
// }

// Exercise 2
//  Start with the following list of numbers:
//  const
//  numbers = [1, 2, 4, 7]
//  Print the square of each number: 1, 4, 16 and 49.
//  1. First, use a for loop.
//  2. Solve the problem again using a For-in loop

// void main() {
//   var numbers = [1, 2, 4, 7];
//   for (var i = 0; i < numbers.length; i++) {
//     print(numbers[i] * numbers[i]);
//   }

//   for (var number in numbers) {
//     print(number * number);
//   }
// }

/// Challenge 1: Longest and Shortest
///
/// Given the following list:
///
/// ```
/// const strings = ['cookies', 'ice cream', 'cake', 'donuts', 'pie', 'brownies'];
/// ```
///
/// Find the longest and shortest strings.

// void main() {
//   const strings = ['cookies', 'ice cream', 'cake', 'donuts', 'pie', 'brownies'];
//   String longest = strings[0];
//   String shortest = strings[0];

//   for (String str in strings) {
//     if (str.length > longest.length) {
//       longest = str;
//     }
//     if (str.length < shortest.length) {
//       shortest = str;
//     }
//   }

//   print("Shortest: $shortest");
//   print("Longest: $longest");
// }

/// Challenge 2: Repetitious Repeats
///
/// How can you tell if a list contains any duplicates?
///
/// Use the following list as an example:
///
/// ```
/// final myList = [1, 4, 2, 7, 3, 4, 9];
/// ```

// void main() {
// Nested Loop Check
// final myList = [1, 3, 2, 7, 3, 4, 9];
// bool containsDuplicates = false;
// for (int i = 0; i < myList.length; i++) {
//   for (int j = i + 1; j < myList.length; j++) {
//     if (myList[i] == myList[j]) {
//       containsDuplicates = true;
//       break;
//     }
//   }
// }

// print(containsDuplicates
//     ? "List contains duplicates"
//     : "List does not contain duplicates");

// Sort and Compare
//   final myList = [1, 4, 2, 7, 3, 4, 9];
//   myList.sort();
//   int? previous;
//   for (final number in myList) {
//     if (number == previous) {
//       print("$number is a duplicate");
//       return;
//     }
//     previous = number;
//   }
//   print("There is no duplicate");
// }

/// Challenge 3: Sorting It All Out
///
/// Write your own algorithm to sort a list of integers without using the
/// `sort` method. If you need some help, do a web search for "bubble sort",
/// and then implement that algorithm in Dart.

void main() {
  List<int> bubbleSort(List<int> list) {
    var n = list.length;
    for (var i = 0; i < n - 1; i++) {
      for (var j = 0; j < n - i - 1; j++) {
        if (list[j] > list[j + 1]) {
          var temp = list[j];
          list[j] = list[j + 1];
          list[j + 1] = temp;
        }
      }
    }

    return list;
  }

  var numbers = [5, 1, 4, 2, 8];
  var sortedNumbers = bubbleSort(numbers);
  print(sortedNumbers);
}
