import 'package:flutter/material.dart';
import 'package:nti_task5/features/auth/services/firebase_service.dart';
import 'package:nti_task5/features/auth/views/sign_in_view.dart';
import 'package:nti_task5/features/auth/widgets/custom_header_text_field.dart';

class SignInForm extends StatelessWidget {
  SignInForm({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomHeaderTextField(
            title: 'البريد اللالكتروني',
            hintText: "أدخل الايميل الخاص بك",
            controller: emailController,
            autovalidateMode: autovalidateMode,
          ),
          const SizedBox(height: 8),
          CustomHeaderTextField(
            title: 'كلمة المرور',
            hintText: "أدخل كلمة المرور",
            controller: passwordController,
            autovalidateMode: autovalidateMode,
          ),

          const SizedBox(height: 12),
          GestureDetector(
            onTap: () async {
              if (formKey.currentState!.validate()) {
                final response = await FirebaseService.signIn(
                  emailAddress: emailController.text,
                  password: passwordController.text,
                );
                response ? Navigator.pop(context) : null;
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
            child: Container(
              alignment: Alignment(0, 0),
              height: 40,
              width: 229,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(25),
                    blurRadius: 4.7,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                'تسجيل الدخول',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff1380A5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
