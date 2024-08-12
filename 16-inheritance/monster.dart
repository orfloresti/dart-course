import 'feline.dart';
import 'ghost.dart';
import 'dragon.dart';

class Monster extends Feline with Ghost, Dragon {
  bool glowInDart = true;

  @override
  void test(){
    print('Test called in Moster');
    super.test();
  }
}