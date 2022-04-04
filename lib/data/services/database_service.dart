abstract class DataBaseService {
  final String serverAddress = 'https://srv.wassuna.com/';

  static const Map<String, String> defaultHeaders = {
    'app-type': '0',
  };

  dynamic postRequest(String url, Map<String, dynamic> body);
}
