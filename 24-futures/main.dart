import 'dart:io';
import 'dart:async';

void main(List<String> args) {
  
  String path = Directory.current.path + '/test.txt';
  print('Appending to ${path}');

  File file = new File(path);

  Future<RandomAccessFile> f = file.open(mode : FileMode.append);

  f.then((RandomAccessFile raf) {
    print('File has been opened!');

    raf
    .writeString('Hello world').then((value){
      print('File has been appended!');

    })
    .catchError((e) {
        print('An error accored: ${e.toString()}');
      })
    .whenComplete(() => raf.close());
  });
  
  print('*** the end ***');
}