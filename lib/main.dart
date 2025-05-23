import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF00AA77), Color(0xFF007C91)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: SizedBox(
              width: double.infinity, // giãn hết chiều ngang
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.center, // căn giữa theo chiều ngang
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Group.png',
                    height: 279,
                    width: 279,
                    fit: BoxFit.contain, // đảm bảo ảnh không bị căng tràn sai
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      SizedBox(width: 50),
                      Expanded(
                        child: Text(
                          'All social media Apps \n are in one Platform',
                          style: TextStyle(
                            // fontFamily: 'IBMPlexSans',
                            fontSize: 24,
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w600,
                            height: 32.5 / 24,
                            letterSpacing: 0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(width: 50),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: GestureDetector(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF92AA00),
                             Color(0xFFF9A11B)
                            ])
                        ),
                        child: Center(child: Text('Login',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF)
                        ),
                        ),
                        ),
                      ),
                    ),
                    ),
                  SizedBox(height: 20),
                   Row(
                    children: [
                    const Text(
                    'By process you agree to the Privacy policy \n and terms & Conditions',
                    style: TextStyle(
                      // fontFamily: 'IBMPlexSans',
                      fontSize: 14,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0,
                      
                    ),
                    textAlign: TextAlign.center,
                  ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
