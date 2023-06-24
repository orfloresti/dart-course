/**
 * Main entry point
 */

main() {
  // boolType();
  // numberType();
  stringType();
}

stringType() {

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