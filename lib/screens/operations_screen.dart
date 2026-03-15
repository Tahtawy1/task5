import 'package:flutter/material.dart';

class OperationsScreen extends StatelessWidget {
  const OperationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset('assets/images/childrenBg.jpeg'),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.372,
              decoration: BoxDecoration(
                color: Color(0xff1380A5),
                borderRadius: BorderRadius.circular(23),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    'أهلا بك في مؤسسة المسار',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'للفئات الخاصه',
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                  SizedBox(height: 20),

                  GestureDetector(
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
                  SizedBox(height: 20),

                  GestureDetector(
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
                        'إنشاء حساب',
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
            ),
          ),
        ],
      ),
    );
  }
}
