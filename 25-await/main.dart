
import 'dart:io';

void main(List<String> args) async {
  print('*** Starting ***');
  File file = await appendFile();
  print('Appended to file ${file.path}');
  print('*** End ***');
}

Future<File> appendFile() {
  File file = new File(Directory.current.path + '/test.txt');
  DateTime now = new DateTime.now();
  return file.writeAsString(now.toString() + '\r\n', mode: FileMode.append);
}