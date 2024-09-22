import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  
  String data = '';
  for( int i = 0; i < 1000; i++){
    data = data + 'Hello world!\r\n';
  }

  // Original data
  var original = utf8.encode(data);

  // Compress data
  var compress = gzip.encode(original);

  // Decompress data
  var decompress = gzip.decode(compress);

  print('Original ${original.length} bytes');
  print('Compress ${compress.length} bytes');
  print('Decompress ${decompress.length} bytes');
  
  String decoded = utf8.decode(decompress);
  // assert(data == decoded);
  // print(decoded); 

}