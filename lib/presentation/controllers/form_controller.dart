import 'package:app/presentation/controllers/user_controller.dart';
import 'package:get/get.dart';

class FormController extends GetxController {
  RxBool visable = RxBool(true);
  RxString email = RxString('');
  RxString password = RxString('');
  RxnString emailErrorText = RxnString(null);
  RxnString passwordErrorText = RxnString(null);
  RxBool validEmail = RxBool(false);
  RxBool validPassword = RxBool(false);

  final _passwordRegex = RegExp(r'^.{8,}$');

  final _emailRegex = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );

  void emailChanged(String value) {
    validateEmail(value);
    email.value = value;
  }

  void passwordChanged(String value) {
    validatePassword(value);
    password.value = value;
  }

  void validateEmail(String value) {
    emailErrorText.value = null;
    if (_emailRegex.hasMatch(value)) {
      validEmail.value = true;
    } else {
      emailErrorText.value = 'A complete, valid email e.g. joe@gmail.com';
    }
  }

  void validatePassword(String value) {
    passwordErrorText.value = null;
    if (_passwordRegex.hasMatch(value)) {
      validPassword.value = true;
    } else {
      passwordErrorText.value = 'Password must be at least 8 characters';
    }
  }

  bool validateForm() => (validEmail.value && validPassword.value);

  void togglePasswordButton() {
    visable.value = !visable.value;
    update();
  }

  void submitFunction() {
    validateEmail(email.value);
    validatePassword(password.value);
    if (validateForm()) {
      UserController().login(email.value, password.value);
    }
  }
}
