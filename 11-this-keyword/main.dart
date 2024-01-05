import 'dog.dart';

void main(List<String> args) {
  Dog bob = new Dog(6, 'Bob');
  print('${bob.name} is ${bob.ageInDogYears()} dog in years old');
}