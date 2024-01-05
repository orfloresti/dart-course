import 'package:http/http.dart' as http;

void main(List<String> args) {
  Uri url = Uri.parse('https://github.com/');

  http.get(url).then((response) {
    print('Response status code: ${response.statusCode}');
    print('Response body: ${response.body}');

  });

}