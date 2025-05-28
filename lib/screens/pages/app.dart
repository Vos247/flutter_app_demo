import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/pages/login_signUp/login.dart';
import 'package:flutter_app_demo/screens/pages/login_signUp/sign_up.dart';
import 'package:get/get.dart';
import 'package:flutter_app_demo/screens/component/app_background.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return AppBackground(
    child: Scaffold(
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
                  style: AppTextStyles.size24W600
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
                        style: AppTextStyles.size16W700
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
                        style: AppTextStyles.size16W700
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 43),
              Text(
                'By process you agree to the Privacy policy \n and terms & Conditions',
                style: AppTextStyles.size16W400,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 45),
            ],
          ),
        ),
      ),
    )
    );
  }
}
