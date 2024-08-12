import 'animal.dart';

void main(List<String> args) {
  Animal dog = new Animal('Rango', 6);
  dog.name = 'Fiddo';
  print(dog.name);

  print('Before setter ${dog.age}');
  dog.age = 4;
  print('After setter ${dog.age}');

}