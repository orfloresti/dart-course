import 'animal.dart';

class Mamal extends Animal {
  bool hasHait = true;
  bool hasBackbone = true;
  bool isWarnBlooded = true;

  void walk() => print('Walking');

  @override
  void test() {
    print('Testing in mamal');
    // super.test();
  }
}