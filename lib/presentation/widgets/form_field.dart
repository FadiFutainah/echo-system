import 'package:app/presentation/controllers/form_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFormField extends StatelessWidget {
  final String label;
  const LoginFormField({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FormController formController = Get.put(FormController());

    return Obx(
      () => TextFormField(
        onChanged: formController.emailChanged,
        decoration: InputDecoration(
          labelText: label,
          errorText: formController.emailErrorText.value,
        ),
      ),
    );
  }
}
