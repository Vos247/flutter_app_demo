import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:get/get.dart';
import 'package:flutter_app_demo/screens/pages/login_signUp/sign_up.dart';
import 'package:flutter_app_demo/screens/pages/home/home.dart';
import 'package:flutter_app_demo/screens/component/app_background.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF00AA77), Color(0xFF007C91)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Image.asset(
                    'assets/images/Frame.png',
                    height: 183,
                    width: 189,
                    fit: BoxFit.contain, // dùng để không bị méo hoặc cắt
                  ),
                ),
                SizedBox(height: 50),
                  const Text(
                      'Login to TOBE SMART',
                      style: AppTextStyles.size24W700
                    ),
                  const Text(
                      'All social Media Apps are in one Platform',
                      style: AppTextStyles.size14W400
                    ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(24),
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(44),
                        topRight: Radius.circular(44),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          IntlPhoneField(
                            disableLengthCheck: true, 
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              border: OutlineInputBorder(),
                            ),
                            initialCountryCode: 'VN',
                            onChanged: (phone) {
                            },
                          ),
                          SizedBox(height: 16),
                          TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Forgot password ?',
                                style: AppTextStyles.size14W400GreenColor
                              ),
                            ),
                          ),
                          SizedBox(height: 50),
                          ElevatedButton(
                            onPressed: () {
                              Get.to(()=> HomePage());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF4EBE99),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              'Login',
                              style: AppTextStyles.size16W700,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 10),
                          Column(
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  text: 'Dont have an account? ',
                                  style: AppTextStyles.size16W500Grey,
                                  children: [
                                    TextSpan(
                                      text: 'Sign Up',
                                      style: AppTextStyles.size16W500Green,
                                       recognizer:
                                      TapGestureRecognizer()
                                        ..onTap = () {
                                          Get.to(() => SignUp()); // Chuyển trang bằng GetX
                                        },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
      ),
    )
    );
  }
}
