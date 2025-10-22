import 'dart:io';

main(List<String> arguments) async {

  var socket = await Socket.connect('127.0.0.1', 3000);
  print('Connected');
  socket.write('This is a test from the TCP client');
  print('Sent, closing');
  await socket.close();
  print('Closed');
  exit(0);

}