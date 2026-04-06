import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_task5/features/auth/presentation/view_model/auth_bloc/auth_bloc.dart';
import 'package:nti_task5/features/auth/presentation/views/widgets/custom_header_text_field.dart';
import 'package:nti_task5/features/home/presentation/views/home_view.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final AutovalidateMode autovalidateMode = AutovalidateMode.onUnfocus;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomHeaderTextField(
            title: 'الاسم',
            hintText: "أدخل اسمك الكامل",
            controller: nameController,
            autovalidateMode: autovalidateMode,
          ),
          const SizedBox(height: 8),
          CustomHeaderTextField(
            title: 'البريد اللالكتروني',
            hintText: "أدخل الايميل الخاص بك",
            controller: emailController,
            autovalidateMode: autovalidateMode,
          ),
          CustomHeaderTextField(
            title: 'كلمة المرور',
            hintText: "أدخل كلمة المرور",
            controller: passwordController,
            autovalidateMode: autovalidateMode,
          ),

          const SizedBox(height: 12),
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is SignUpSuccess) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeView()),
                );
              } else if (state is SignUpFailure) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(state.errMessage)));
              }
            },
            builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    context.read<AuthBloc>().add(
                      SignUpEvent(
                        name: nameController.text,
                        email: emailController.text,
                        password: passwordController.text,
                      ),
                    );
                  }
                },

                child: state is SignUpLoading
                    ? CircularProgressIndicator()
                    : Container(
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
                          'إنشاء حساب',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff1380A5),
                          ),
                        ),
                      ),
              );
            },
          ),
        ],
      ),
    );
  }
}
