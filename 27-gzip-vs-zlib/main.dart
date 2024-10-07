import 'dart:io';
import 'dart:convert';

main(List<String> arguments) {

  int zlibTest = testCompress(zlib);
  int gzipTest = testCompress(gzip);

  print('zlib = ${zlibTest}');
  print('gzip = ${gzipTest}');

}

String generateData() {
  String data = '';

  for(int i = 0; i < 1000; i++){
    data = data + 'Hello World\r\n';
  }

  return data;
}

int testCompress(var codec) {
  String data = generateData();

  var original = utf8.encode(data);
  var compressed = codec.encode(original);
  var decompressed = codec.decode(compressed);

  print('Testing ${codec.toString()}');
  print('Original ${original.length}');
  print('Compressed ${compressed.length}');
  print('Decompressed ${decompressed.length}');

  print('');

  String decoded = utf8.decode(decompressed);
  assert(data == decoded);

  return compressed.length;
}