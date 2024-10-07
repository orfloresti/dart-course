import 'dart:io';
import 'dart:convert';

void main(List<String> args) {
  Process.start('cat', []).then((Process process) {
    process.stdout.transform(utf8.decoder).listen((data) {
      print(data);
    });
    // Send to the process
    process.stdin.writeln("Hello world");

    // Stop the process
    Process.killPid(process.pid);

    // Get the exit code
    process.exitCode.then((int code) {
      print('Exit code: ${code}');

      // Exit
      exit(0);
    });
  });
}
