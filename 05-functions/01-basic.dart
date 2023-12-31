main() {
  test();
  sayHello('Bryan');
  print('Your age in dog is ${dogYears(29)}');
  int wall1 = squareFeet(10, 10);
  int wall2 = squareFeet(10, 20);
  int wall3 = squareFeet(10, 20);
  int wall4 = squareFeet(10, 20);
  int ceiling = squareFeet(20, 10);

  double paint = paintNeeded(wall1, wall2, wall3, wall4, ceiling);
  print('You ${paint} gallons of paint');
}

void test() {
  print("Testing");
}

void sayHello(String name) {
  print('Hello ${name}');
}

int dogYears(int age) {
  return age * 7;
}

int squareFeet(int width, int length) {
  return width * length;
}

double paintNeeded(int wall1, int wall2, int wall3, int wall4, int ceiling) {
  int footage = wall1 + wall2 + wall3 + wall4 + ceiling;
  return footage / 10;
}
