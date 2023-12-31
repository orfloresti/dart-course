void main(List<String> args) {
  (){print('Hello');};

  List people = ['Bryan', 'Heather', 'Chris'];
  people.forEach(print);

  print('-----------');
  people.forEach((name) {
    print(name);
  });

  print('-----------');
  people.where((name){
    switch(name){
      case 'Chris':
        return true;
      case 'Heather':
        return false;
      case 'Bryan':
        return true;
      default:
        return false;
    }
  }).forEach(print);
  
}

