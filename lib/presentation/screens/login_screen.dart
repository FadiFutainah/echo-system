import 'package:app/presentation/widgets/form_field.dart';
import 'package:app/presentation/widgets/password_field.dart';
import 'package:app/presentation/widgets/submit_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(Icons.android_outlined,
                    size: 220, color: Color(0xff24C077)),
                LoginFormField(label: 'email'),
                SizedBox(height: 10),
                PasswordFormField(),
                SizedBox(height: 30),
                SumbitButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
