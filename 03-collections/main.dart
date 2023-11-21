import 'dart:collection';

enum colors { red, green, blue }

main() {
  // enumExample();
  // listExample();
  // setExample();
  // queueExample();
  mapExample();
}


mapExample() {
  Map people =  {'dad': 'Or', 'son': 'Ste'};

  print(people);
  print(people.keys);
  print(people.values);

  print(people['dad']);

  people.putIfAbsent('mom', () => 'Vic');
  print(people);
}

queueExample() {
  Queue items = new Queue();
  items.add(1);
  items.add(3);
  items.add(2);
  items.removeFirst();
  items.removeLast();
  
  print(items);
}

setExample() {
  Set<int> numbers = new Set();
  numbers.add(1);
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);

  print(numbers);
}

listExample() {
  List test = [1, 2, 3, 4];
  print('Lenght = ${test.length}');
  print('First element: ${test[0]}');

  // print(test.elementAt(1234)); // Error out of range

  List things = [];
  things.add(1);
  things.add('cats');
  things.add(true);

  print(things);

  List<int> numbers = <int>[];
  numbers.add(1);
  // numbers.add("Hello"); // Error

  print(numbers);
}

enumExample() {
  print(colors.values);
  print(colors.red);
}
