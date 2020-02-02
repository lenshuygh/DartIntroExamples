import 'package:codelabs/codelabs.dart' as codelabs;

class Bycicle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;

  Bycicle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bycicle: $_speed mph';
}

void main() {
  var bike = new Bycicle(2, 1);
  print(bike);
}

