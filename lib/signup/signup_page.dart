import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupPageUI extends StatefulWidget {
  const SignupPageUI({super.key});

  @override
  State<SignupPageUI> createState() => _SignupPageUIState();
}

class _SignupPageUIState extends State<SignupPageUI> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Instagram",
              style: TextStyle(
                fontSize: 38.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10.h),
            customTextFiled("Email", email),
            customTextFiled("Password", password),
            SizedBox(height: 20.h),
            customButton(),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 50.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account? ",
              style: TextStyle(
                fontSize: 15.sp,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customButton() {
    return Container(
      height: 40.h,
      width: 320.w,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        "Sign up",
        style: TextStyle(
          color: Colors.white,
          fontSize: 17.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget customTextFiled(String hintText, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
