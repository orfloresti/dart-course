import 'dart:io';
import 'dart:convert';
import 'package:archive/archive.dart';
import 'package:path/path.dart' as p;

main(List<String> arguments) {

  List<String> files = [];
  Directory.current.listSync().forEach((FileSystemEntity fse) {
    if(fse.statSync().type == FileSystemEntityType.file) files.add(fse.path);
  });

  String zipfile = ''; // set path 

  zip(files, zipfile);

  unzip(zipfile, ''); ''; // set path 

}

void zip(List<String> files, String file) {
  Archive archive = new Archive();

  files.forEach((String path){
    File file = new File(path);

    ArchiveFile archivefile = new ArchiveFile(p.basename(path), file.lengthSync(), file.readAsBytesSync());
    archive.addFile(archivefile);

  });

  ZipEncoder encoder = new ZipEncoder();
  File f = new File(file);
  f.writeAsBytesSync(encoder.encode(archive));

  print('Compressed');

}

void unzip(String zip, String path) {
  File file = new File(zip);

  Archive archive = new ZipDecoder().decodeBytes(file.readAsBytesSync());

  archive.forEach((ArchiveFile archivefile) {
    File file = new File(path + '/' + archivefile.name);
    file.createSync(recursive: true);
    file.writeAsBytesSync(archivefile.content);

  });

  print('Decompressed');
}