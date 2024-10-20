// DIFFERENCE BETWEEN ABSTRACT CLASSES AND INTERFACE CLASSES
// abstract classes are used to provide a base class for concrete 
// subclasses to inherit from, while interfaces are used to define
// a set of methods that a class must implement
abstract interface class Shape { // abstract interface creates true interface
  double calculateArea();
}

// Circle class implementing the Shape interface
class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

// Rectangle class implementing the Shape interface
class Rectangle implements Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

// AreaCalculator class now accepts shapes that implement the Shape interface
class AreaCalculator {
  double calculateArea(Shape shape) {
    return shape.calculateArea();
  }
}
