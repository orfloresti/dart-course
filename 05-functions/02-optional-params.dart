main( ) {
  sayHello('Bryan');
  download('myFile.txt');
  download('myFile2.txt', true);
}

void sayHello([String name = '']) {
  if(name.isNotEmpty) name = name.padLeft(name.length +1 );
  print('Hello${name}');
}

void download(String file, [bool open = false]) {
  print('Downloading ${file}');
  if(open) print('Opening ${file}');
}