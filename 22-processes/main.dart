import 'dart:io';

void main(List<String> args) {

  Process.run('ls', ['-l']).then((ProcessResult results) {
    print(results.stdout);
    print('Exit code: ${results.exitCode}');
  });
}