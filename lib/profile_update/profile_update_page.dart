import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileUpdatePage extends StatelessWidget {
  const ProfileUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.done,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Container(
                height: 90.h,
                width: 90.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: Icon(
                  Icons.account_circle,
                  size: 80.sp,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Change profile photo",
                  style: TextStyle(
                    fontSize: 18.sp,
                  ),
                ),
              ),
              customTextField("Name"),
              customTextField("Username"),
              customTextField("Bio"),
              customTextField("Add link"),
            ],
          ),
        ),
      ),
    );
  }

  Widget customTextField(String hintText) {
    return Padding(
      padding: EdgeInsets.all(10.sp),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
        ),
      ),
    );
  }
}
