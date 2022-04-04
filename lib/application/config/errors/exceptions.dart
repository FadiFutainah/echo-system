class AppException implements Exception {
  final String _message;

  AppException(this._message) : super();

  @override
  String toString() => _message;
}

class FetchDataException extends AppException {
  FetchDataException(int statusCode)
      : super('Internal server error $statusCode');
}

class InternetConnectionException extends AppException {
  InternetConnectionException() : super('No internet connection');
}

class UnautherizedException extends AppException {
  UnautherizedException(int statusCode) : super('Invalid token $statusCode');
}

class WeakInternetConnection extends AppException {
  WeakInternetConnection() : super('waek internet connection');
}

class NotFoundException extends AppException {
  NotFoundException(int statusCode) : super('Not found $statusCode');
}
