import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_task5/features/auth/presentation/view_model/auth_bloc/auth_bloc.dart';
import 'package:nti_task5/features/auth/presentation/views/sign_in/sign_in_view.dart';
import 'package:nti_task5/features/on_boarding_screen/views/operations_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => OperationsScreen()),
            ),
            child: Container(
              alignment: Alignment(0, 0),
              margin: EdgeInsets.only(bottom: 62),
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffE33C64),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'دعنا نبدء',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
