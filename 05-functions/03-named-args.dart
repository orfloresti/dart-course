main() {
  int footage = squartFeet(length: 10, width: 5);
  print('Footage is ${footage}');
  download('myFile.txt');
  download('myFile2.txt', port: 90);
}

int squartFeet({int width = 0, int length = 0}) {
  return width * length;
}

void download(String file, {int port = 80}) {
  print('Download ${file} on port ${port}');
}
