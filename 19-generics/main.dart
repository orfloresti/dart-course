void main(List<String> args) {
  List<int> numbers = [];
  numbers.addAll([1,2,3,4]);

  print(numbers);

  List<String> strings = [];
  strings.addAll(['a', 'b', 'c']);

  print(strings);
  add(1, 2);
  add(1.0, 2.0);
  // add('Hello ', 'world'); // Not allowed for the type of params
}

void add<T extends num>(T a, T b)  {
  print(a + b);
}

