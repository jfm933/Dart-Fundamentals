// Create a String? variable called profession , but don’t give it a value. Then you’ll have profession null . Get it? Professional? :]

// Give profession a value of “basketball player”

/*
Challenge 1: Naming Customs
People around the world have different customs for giving names to children. It would be difficult to create a data class to accurately represent them all, but try it like this:

- Create a class called Name with givenName and surname properties.

- Some people write their surname last and some write it first. Add a Boolean property called surnameIsFirst to keep track of this.

- Not everyone in the world has a surname.

- Add a toString method that prints the full name.
*/
class Name {
  String? givenName;
  String? surname;
  bool surnameIsFirst;

  Name({this.givenName, this.surname, this.surnameIsFirst = false});

  @override
  String toString() {
    if (surname == null) {
      return '$givenName';
    } else if (surnameIsFirst) {
      return '$surname $givenName';
    } else {
      return '$givenName $surname';
    }
  }
}

void main() {
  // String? profession;
  // print(profession);
  // profession = 'basketball player';
  // print(profession);
  // const iLove = 'Dart';
  // print(iLove);

  // var name1 = Name(givenName: 'John', surname: 'Doe');
  // print(name1.toString()); // John Doe

  // var name2 = Name(givenName: 'Madonna');
  // print(name2.toString()); // Madonna

  // var name3 = Name(givenName: 'Yoko', surname: 'Ono', surnameIsFirst: true);
  // print(name3.toString()); // Ono Yoko

  var people = [
    Name(givenName: 'Beyonce'),
    Name(givenName: 'Leonardo', surname: 'Da Vinci', surnameIsFirst: true),
    Name(givenName: 'Cher'),
    Name(givenName: 'Malala', surname: 'Yousafzai'),
  ];

  for (var person in people) {
    print(person.toString());
  }
}
