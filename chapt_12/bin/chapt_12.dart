void main() {
  // print("Hello world");

  // print("Chapter 12: List");

  // var desserts = ["Cookies", "Ice Cream", "Cake"];
  // print(desserts);

  // desserts = [];

  // // var snacks = <String>[];
  // final secondElement = desserts[1];
  // print(secondElement);

  // If you know the value but don't know the index
  // final index = desserts.indexOf("Cake");
  // final value = desserts[index];
  // print("The value at index $index is $value");

  // Assigning the value at a specific index
  // desserts[1] = "Brownies";
  // print(desserts);

  // // Adding a value to the end of the list
  // desserts.add("Ice Cream");
  // print(desserts);

  // // Inserting elements at a specific index
  // desserts.insert(1, "Pie");
  // print(desserts);

  // // Removing elements
  // desserts.remove("Pie");
  // print(desserts); // [Cookies, Brownies, Cake, Ice Cream]

  // // Removing elements at a specific index
  // desserts.removeAt(0);
  // print(desserts); // [Brownies, Cake, Ice Cream]

  // Sorting a list
  // final integers = [32, 73, 2, 343, 7, 9];
  // integers.sort();
  // print(integers); // [2, 7, 9, 32, 73, 343]

  // final smallest = integers[0];
  // print(smallest); // 2

  // final lastIndex = integers.length - 1;
  // final largest = integers[lastIndex];
  // print(largest); // 343

  // Sorth method on strings
  // final animals = ['cats', 'dogs', 'elephants', 'badgers', 'aardvarks'];
  // animals.sort();
  // print(animals); // [aardvarks, badgers, cats, dogs, elephants]

  // Mutable and Immutable Lists
  // var desserts = ["Cookies", "Ice Cream", "Cake"];
  // desserts = []; // OK
  // desserts = ['Cookies', 'Ice Cream', 'Cake', "Pie"]; // OK

  // final desserts = ["Cookies", "Ice Cream", "Cake"];
  // desserts = []; // Error
  // desserts = ['Cookies', 'Ice Cream', 'Cake', "Pie"]; // Error
  // desserts = someOtherList; // Error

  // final desserts = ["Cookies", "Ice Cream", "Cake"];
  // desserts.remove("Cookies"); // OK
  // desserts.add("Pie"); // OK
  // desserts.insert(1, "Brownies"); // OK

  // Deeply Immutable Lists
  // const desserts = ['Cookies', 'Ice Cream', 'Cake'];
  // desserts.add("Pie"); // Error Unsupported operation: Cannot add to an unmodifiable list
  // // Although the error is not in the editor, it will be caught at runtime
  // desserts.insert(1, "Brownies"); // Error Unsupported operation: Cannot add to an unmodifiable list
  // desserts[0] = 'Brownies'; // Error Unsupported operation: Cannot modify an unmodifiable list

  // Const List Literals
  // final desserts = const ['Cookies', 'Ice Cream', 'Cake'];

  // Unmodifiable Lists
  // const modifialbleDesserts = ['Cookies', 'Ice Cream', 'Cake'];
  // final unmodifiableDesserts = List.unmodifiable(modifialbleDesserts);
  // unmodifiableDesserts.add(
  //     "Pie"); // Error Unsupported operation: Cannot add to an unmodifiable list

  // List Properties
  // const drinks = ['Water', 'Milk', 'Juice', 'Soda'];
  // print(drinks.first); // Water
  // print(drinks.last); // Soda

  // // Checking if a list is empty
  // print(drinks.isEmpty); // false
  // print(drinks.isNotEmpty); // true

  // Looping Over the Elements of a List
  // Using a For loop
  // const desserts = ['Cookies', 'Ice Cream', 'Cake'];
  // for (int i = 0; i < desserts.length; i++) {
  //   final item = desserts[i];
  //   print("I like $item");
  // }

  // Using a For-in Loop
  // for (final item in desserts) {
  //   print("I like $item");
  // }

  // Spread Operator (...)
  // const pastries = ['Cookies', 'Ice Cream', 'Cake'];
  // const candy = ["junior Mints", "Twizzlers", "Snickers"];
  // // final deserts = ["donuts"];
  // // Using Add All
  // // deserts.addAll(pastries);
  // // deserts.addAll(candy);
  // // print(
  // //     deserts); // [donuts, Cookies, Ice Cream, Cake, junior Mints, Twizzlers, Snickers]

  // // Using spread operator
  // const deserts = ['donuts', ...pastries, ...candy];
  // print(deserts);

  // Collection if
  // const peanutAllergy = true;
  // const sensitiveCandy = [
  //   'Junior Mints',
  //   'Twizzlers',
  //   if (!peanutAllergy) 'Reeses',
  // ];
  // print(sensitiveCandy); // [Junior Mints, Twizzlers]

  // Collection for
  // const deserts = ['gobi', 'sahara', 'arctic'];
  // var bigDeserts = [
  //   'ARABIAN',
  //   for (var desert in deserts) desert.toUpperCase(),
  // ];
  // print(bigDeserts); // [ARABIAN, GOBI, SAHARA, ARCTIC]

  // Nullable List
  // List<int>? nullableList = [2, 4, 3, 7];
  // nullableList = null;

  // // Nullable elements
  // List<int?> nullableElements = [2, null, 3, 7];

  // // Nullable List with nullable elements
  // List<int?>? nullableListWithNullableElements = [2, null, 3, 7];
  // nullableListWithNullableElements = null;

  // // Using teh Basic Null-Aware Operators
  // List<String?>? drinks = ['milk', 'water', null, 'soda'];
  // for (String? drink in drinks) {
  //   int letters = drink?.length ?? 0;
  //   print(letters);
  // }

  // Null-Aware Index Operator(?[])
  // List<String>? myDesserts = ['Cookies', 'Ice Cream', 'Cake'];
  // myDesserts = null;
  // String? dessertToday = myDesserts?[0];
  // print(dessertToday); // null

  // Null-Aware Spread Operator (...?)
  List<String>? coffees;
  final hotDrinks = ['milk tea', ...?coffees];
  print(hotDrinks); // [milk tea]
}
