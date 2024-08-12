/**
 * Main entry point
 */
import 'dart:io';
import 'dart:async';

main() {
  // boolType();
  // numberType();
  // stringType();
  // consts();
  userInput();
}


userInput() {
  stdout.write('What is your name?\r\n');
  String? name = stdin.readLineSync();

  name == null ? stderr.write('Name is empty') :  stdout.write('Hello ${name}');
}

consts() {
  String hello = 'Hello';

  // if const is declared this variable will never change
  const String world = 'world';

  print(hello + ' ' + world);
}

stringType() {
  String hello = 'Hello world';
  String name = 'Orlando Flores';
  print('Hello ${name}');
  
  // get substring
  String firstname = name.substring(0,7);
  print(firstname);
  
  // get the index of a string
  int index = name.indexOf(' ');
  String lastname = name.substring(index).trim();
  print('lastname = ${lastname}');

  // length
  print(name.length);

  // Contains
  print(name.contains('or'));

  // Create a list
  List parts = name.split(' ');
  print(parts);
  print(parts[0]);
  print(parts[1]);
}

numberType() {
  num age = 0;
  int people = 6;
  double temp = 32.06;

  // Parse
  var error = int.tryParse('12.09');
  if(error == null) {
    print('Could not parse!');
  }

}

boolType() {
  // this is a comment
  var isOn; // this is a variable
  print(isOn);

  isOn = true; // this is a variable
  print(isOn);

  isOn = false; // this is a variable
  print(isOn);

  print('isOn is a ${isOn.runtimeType}');
}