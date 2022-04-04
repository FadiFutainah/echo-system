import 'package:app/presentation/controllers/form_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SumbitButton extends StatelessWidget {
  const SumbitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FormController formController = Get.put(FormController());
    return ElevatedButton(
      child: const Text('submit'),
      onPressed: formController.submitFunction,
    );
  }
}
