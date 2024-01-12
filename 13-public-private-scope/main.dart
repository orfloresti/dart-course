import 'animal.dart';
main(List<String> arguments) {
  Animal cat = new Animal('fluffy', 16, 'Short Hair');

  cat.breed = 'mixed';
  //cat._name = 'muffin';
  //cat._display('hello');

  cat.sayHello();
  cat.saySomething('meow');
}