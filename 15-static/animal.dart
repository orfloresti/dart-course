class Animal {

  // Shared in all instances of the class
  static int _counter = 0;

  Animal() {
    _counter++;
    print('There are ${_counter} of us');
  }

  static void run() {
    print('Running');
  }
}