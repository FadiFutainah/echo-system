import 'package:app/presentation/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserController userController = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('welcome to APPA'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.logout_outlined),
          onPressed: userController.logout,
        ),
      ),
      body: const Center(child: Text('You can Improvise')),
    );
  }
}
