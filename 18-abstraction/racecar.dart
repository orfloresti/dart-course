
import 'car.dart';

class RaceCar extends Car {

  RaceCar() {
    this.hasHorn = true;
    this.hasWheels = true;
  }

  // void hook() => print('deep deep');
  void honk() {
    print('honk in race car');
    super.honk();
  }

}