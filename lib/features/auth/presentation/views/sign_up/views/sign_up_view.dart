import 'package:flutter/material.dart';
import 'package:nti_task5/features/auth/presentation/views/sign_in/widgets/sign_in_form.dart';
import 'package:nti_task5/features/auth/presentation/views/sign_up/widgets/sign_up_form.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'إنشاء حساب جديد',
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            SignUpForm(),
          ],
        ),
      ),
    );
  }
}
