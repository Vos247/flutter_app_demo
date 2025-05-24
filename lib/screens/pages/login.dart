import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:get/get.dart';
import 'package:flutter_app_demo/screens/pages/signUp.dart';
import 'package:flutter_app_demo/screens/pages/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0,
                      ),
                    ),
                  const Text(
                      'All social Media Apps are in one Platform',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0,
                      ),
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
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF4BBD99),
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0,
                                ),
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
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 10),
                          Column(
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  text: 'Dont have an account? ',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF6F6D6D),
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Sign Up',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF4EBE99),
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0,
                                      ),
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
    );
  }
}
