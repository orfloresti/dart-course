main() {
  // assertExample();
  // ifElseExample();
  scopeExample();
}

scopeExample(){
  int age = 44;

  if(age == 43) {
    print('You are 43');
  } else {
    bool hasBill = true;
    print('You are ${age} and has bills ${hasBill}');
  }
}

ifElseExample() {
  int age = 23;

  if( age == 43 ) print('You are 43');
  if( age != 43 ) print('You are not 43');

  if( age < 18)  {
    print('You are a minor');

    if( age < 13) {
      print('You are not even a teenager');
    }
  }

  if( age > 65) {
    print('You are senior');

    if(age > 102) {
      print('You are lucky to be alive');
    }
  }

  if( age == 23 ) {
    print('This is your special year');
  } else {
    print('This is just a normal year');

    if( age < 21 ) {
      print('You are a minor');
    } else {
      print('You are an adult');
    }

  }
}

assertExample () {
  print('Starting');
  int age = 43;

  assert( age == 43 );
  print("Finish");
}