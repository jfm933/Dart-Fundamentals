// Challenge 1: Spheres
// Create a Sphere class with a const constructor that takes a radius as a named parameter.
// Add getters for the volume and surface area but none for the radius. Don’t use the
// dart:math package but store your version of pi as a static constant. Use your class to find
// the volume and surface area of a sphere with a radius of 12 .

class Sphere {
  static const double piValue = 3.1415926535897932;
  // final double piValue = 3.1415926535897932;

  final double radius;

  const Sphere({required this.radius});

  // double get volume => (4 / 3) * piValue * radius * radius * radius;

  // double get surfaceArea => 4 * piValue * radius * radius;

  double volume() {
    return (4 / 3) * piValue * radius * radius * radius;
  }

  double surfaceArea() {
    return 4 * piValue * radius * radius;
  }
}

void main() {
  Sphere sphere = Sphere(radius: 12);

  // With getter
  // print("Volume of the sphere: ${sphere.volume}");
  // print("Surface area of the sphere: ${sphere.surfaceArea}");

  // With methods
  print("Volume of the sphere: ${sphere.volume()}");
  print("Surface area of the sphere: ${sphere.surfaceArea()}");
  // Without static
  // print(Sphere.piValue); // Error: Member not found: 'piValue'.

  // With static
  print(Sphere.piValue); // 3.1415926535897932
}
