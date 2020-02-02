import 'dart:math';

abstract class Shape {
  //using dart's built in factory keyword
  factory Shape(String type){
    if(type == 'circle') return Circle(2);
    if(type == 'square') return Square(2);
    throw "Can't create $type";
  }
  num get area;
}

class Circle implements Shape {
  final num radius;

  Circle(this.radius);

  @override
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;

  Square(this.side);

  @override
  num get area => pow(side, 2);
}

//because every class defines an interface we can do the following
class CircleMock implements Circle{
  @override
  num area;
  @override
  num radius;
}

main(){
  //no factory used
  /*final circle = Circle(2);
  final square = Square(2);*/

  //using top level shapeFactory function
  final circle = shapeFactory('circle');
  final square = shapeFactory('square');

  print(circle.area);
  print(square.area);

  //using the factory from the abstract Shape class
  final circle2 = Shape('circle');
  final square2 = Shape('square');

  print(circle2.area);
  print(square2.area);
}

//top level function
Shape shapeFactory(String type){
  if(type == 'circle') return Circle(2);
  if(type == 'square') return Square(2);
  throw "Can't create $type.";
}

