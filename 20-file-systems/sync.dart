import "dart:io";

void main(List<String> args) {
  String path = '/';
  Directory dir = new Directory(path);

  if(dir.existsSync()) {
    print('Exist');
  }
  else {
    print('Not found');
  }
}