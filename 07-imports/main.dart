import 'lib/calcs.dart';
import 'dart:convert';

void main(List<String> args) {
  print(calcs());

  String myvalue = 'Hello World';
  List<int> ebytes = utf8.encode(myvalue);
  String encoded = base64.encode(ebytes);

  print('Encoded: ${encoded}');

  List<int> dbytes = base64.decode(encoded);
  String decoded = utf8.decode(dbytes);
  print('Decoded: ${decoded}');

}