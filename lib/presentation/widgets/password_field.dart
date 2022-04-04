import 'package:app/presentation/controllers/form_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({Key? key}) : super(key: key);

  Icon _getIcon(bool visable) {
    return Icon(
      (visable) ? Icons.visibility_outlined : Icons.visibility_off_outlined,
    );
  }

  @override
  Widget build(BuildContext context) {
    FormController formController = Get.put(FormController());

    return Obx(
      () => TextFormField(
        onChanged: formController.passwordChanged,
        obscureText: formController.visable.value,
        decoration: InputDecoration(
          labelText: 'password',
          errorText: formController.passwordErrorText.value,
          errorMaxLines: 2,
          suffixIcon: IconButton(
            onPressed: formController.togglePasswordButton,
            icon: _getIcon(formController.visable.value),
          ),
        ),
      ),
    );
  }
}
