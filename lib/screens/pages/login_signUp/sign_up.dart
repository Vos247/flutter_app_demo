import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:flutter_app_demo/screens/pages/login_signUp/login.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:get/get.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
          crossAxisAlignment: CrossAxisAlignment.center, // từ trái sang phải
          mainAxisAlignment: MainAxisAlignment.center, // canh trên xuống
          children: [
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
              ), // thêm 50 pixel ở trái và phải của widget con
              child: Image.asset(
                'assets/images/Frame-2.png',
                height: 191,
                width: 195,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 60),
            const Text(
              'Sign Up',
              style: AppTextStyles.size24W700,
            ),
            const Text(
              'All social Media Apps are in one Platform',
              style: AppTextStyles.size14W400
            ),
            SizedBox(height: 20),
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
                      Row(
                        children: [
                          Expanded(
                            child: IntlPhoneField(
                              disableLengthCheck: true, // tắt việc kiểm tra số lượng ký tự nhập vào
                              decoration: InputDecoration(
                                labelText: 'Phone Number',
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 14,
                                ),
                              ),
                              initialCountryCode: 'VN',
                              onChanged: (phone) {},
                            ),
                          ),
                          SizedBox(width: 5),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF4EBE99),
                              padding: EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 16,
                              ), // thẳng đứng
                              minimumSize: Size(0, 48),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              'Send Code',
                              style: AppTextStyles.size12W400
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Phone verification code',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password Comfirm',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 5),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF4EBE99),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: AppTextStyles.size16W700,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 5),
                      Column(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              text: 'Already have an account?',
                              style: AppTextStyles.size16W500Grey,
                              children: [
                                TextSpan(
                                  text: 'Log In',
                                  style: AppTextStyles.size16W500Green,
                                  recognizer:
                                      TapGestureRecognizer()
                                        ..onTap = () {
                                          Get.to(() => LoginPage()); // Chuyển trang bằng GetX
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
