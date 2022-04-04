class Endpoints {
  static const String login = 'api/login';
}

class StatusCode {
  static const int success = 200;
  static const int unauthorized = 403;
  static const int notfound = 404;
  static const int internalServerError = 500;
}

class Message {
  static const String loginError = 'login failed';
  static const String loginSuccess = 'login success';
  static const String logoutSuccess = 'logout success';
}
