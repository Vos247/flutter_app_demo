import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/pages/login.dart';
import 'package:flutter_app_demo/screens/pages/signUp.dart';
import 'package:get/get.dart';
class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF00AA77), Color(0xFF007C91)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: Image.asset(
                  'assets/images/Group.png',
                  height: 279,
                  width: 279,
                  fit: BoxFit.contain, // đảm bảo ảnh không bị căng tràn sai
                ),
              ),
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 49),
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
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: GestureDetector(
                  onTap: () {
                    Get.to(()=> const LoginPage());
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF92AA00),
                          Color(0xFFF9A11B),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: GestureDetector(
                  onTap: () {
                    Get.to(()=> const SignUp());
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF007A7A),
                          Color(0xFF00AA77),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up with Gmail',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 43),
              Text(
                'By process you agree to the Privacy policy \n and terms & Conditions',
                style: TextStyle(
                  // fontFamily: 'IBMPlexSans',
                  fontSize: 14,
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 45),
            ],
          ),
        ),
      ),
    );
  }
}
