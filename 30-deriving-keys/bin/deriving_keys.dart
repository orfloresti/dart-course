import 'dart:typed_data';
import 'dart:convert';
import 'package:pointycastle/pointycastle.dart';

void main(List<String> args) {
  Digest digest = Digest('SHA-256');

  String value = 'Hello,  World!';
  Uint8List data = Uint8List.fromList(utf8.encode(value));
  Uint8List hash = digest.process(data);

  print(hash);
  print(base64.encode(hash)); // Encoding is not encryption
}