main() {
  // assertExample();
  // ifElseExample();
  // scopeExample();
  // switchExample();
  // loopsExample();
  // forEachExample();
}

forEachExample() {
  List people = ['Bryan', 'Heather', 'Chris'];

  print(people);

  for( int i = 0; i < people.length; i++) {
    print('Person at ${i} is ${people[i]}');
  }

  people.forEach((person) {
    print(person);
  });
}


loopsExample() {
  int value;
  int init = 1;
  int max = 5;

  value = init;

  do {
    print(value);
    value++;
  } while (value <= max);

  print('Done with do loop');

  value = init;

  while (value <= max) {
    print(value);
    value++;
  }

  print('Done with while loop');

  value = init;
  do {
    print('Value = ${value}');
    value++;

    if(value == 3) {
      print('Value is 3');
    }

    if(value > 5) {
      print('Value is greater than 5');
      break;
    }
  } while(true);

  print('Finished');
}

switchExample() {
  int age = 21;

  switch (age) {
    case 18:
      print('You are 18, you can vote');
      break;
    case 21:
      print('You are 21, you are an adult');
      break;
    case 65:
      print('You are 65, you can retire');
      break;
    default:
      print('Nothing special about this age');
      break;
  }
}

scopeExample() {
  int age = 44;

  if (age == 43) {
    print('You are 43');
  } else {
    bool hasBill = true;
    print('You are ${age} and has bills ${hasBill}');
  }
}

ifElseExample() {
  int age = 23;

  if (age == 43) print('You are 43');
  if (age != 43) print('You are not 43');

  if (age < 18) {
    print('You are a minor');

    if (age < 13) {
      print('You are not even a teenager');
    }
  }

  if (age > 65) {
    print('You are senior');

    if (age > 102) {
      print('You are lucky to be alive');
    }
  }

  if (age == 23) {
    print('This is your special year');
  } else {
    print('This is just a normal year');

    if (age < 21) {
      print('You are a minor');
    } else {
      print('You are an adult');
    }
  }
}

assertExample() {
  print('Starting');
  int age = 43;

  assert(age == 43);
  print("Finish");
}
