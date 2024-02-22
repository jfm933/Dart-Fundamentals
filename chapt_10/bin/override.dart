class Animal {
  void createSound() {
    print("Some generic Sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Bark");
  }
}

void main() {
  Animal a = new Animal();
  a.createSound(); // Some generic Sound

  Dog d = new Dog();
  d.makeSound(); // Bark
}
