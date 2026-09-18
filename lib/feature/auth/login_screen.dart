import 'package:flutter/material.dart';
import '../../core/styles/text_styles.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/main_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Login', style: TextStyles.headline1),
            const SizedBox(height: 40),
            const CustomTextField(title: 'Email'),
            const SizedBox(height: 30),
            const CustomTextField(title: 'Password', isPassword: true),
            const SizedBox(height: 40),
            MainButton(
              text: 'Log In',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}