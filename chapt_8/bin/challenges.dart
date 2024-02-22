// Challenge 1: Rectangles
// Create a class named Rectangle with properties for _width and _height .
// Add getters named width and height
// Add setters for these properties that ensure you can’t give negative values.
// Add a getter for a calculated property named area that returns the area of the rectangle

class Rectangle {
  double _width;
  double _height;

  Rectangle(this._width, this._height);

  double get width => _width;
  double get height => _height;

  set width(double width) {
    if (width < 0) {
      print("Width cannot be negative");
      return;
    }
    _width = width;
  }

  set height(double height) {
    if (height < 0) {
      print("Height cannot be negative");
      return;
    }
    _height = height;
  }

  double get area => _width * _height;
}

void main() {
  print("Challenges");
  final rectangle = Rectangle(10, 20);
  print("Area: ${rectangle.area}"); // Area: 200
}
