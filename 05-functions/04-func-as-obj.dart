main() {
  // int age = 43;
  var dogYears = calcYears;
  var catYears = calcYears;

  print('Your age in dog years is ${dogYears(age: 29, multiplier: 7)}');
  print('Your age in cat years is ${catYears(age: 29, multiplier: 12)}');

}

int calcYears({int age = 0, int multiplier = 0}) {
  return age * multiplier; 
}
