import 'package:http/http.dart' as http;

class UrlSender {
  final urlConsumerUrl = '';

  Future<void> send(String url) async {
    print('send url: $url'); // TODO: remove
    await http.post(Uri.parse(urlConsumerUrl), body: {
      url: url,
    });
  }
}
