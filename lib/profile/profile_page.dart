import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePageUI extends StatefulWidget {
  const ProfilePageUI({super.key});

  @override
  State<ProfilePageUI> createState() => _ProfilePageUIState();
}

class _ProfilePageUIState extends State<ProfilePageUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 90.h,
                    width: 90.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                  showDetails("Posts", "0"),
                  showDetails("Followers", "0"),
                  showDetails("Following", "0"),
                ],
              ),
              SizedBox(height: 30.h),
              customButton(true),
              SizedBox(height: 30.h),
              Expanded(
                child: GridView.builder(
                  itemCount: 18,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: Image.network(
                        "https://images.pexels.com/photos/459198/pexels-photo-459198.jpeg?cs=srgb&dl=pexels-pixabay-459198.jpg&fm=jpg",
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customButton(bool isCurrentUserProfile) {
    return Container(
      height: 30.h,
      width: 310.w,
      decoration: BoxDecoration(
        color: isCurrentUserProfile ? Colors.grey[300] : Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(
        isCurrentUserProfile ? "Edit Profile" : "Follow",
        style: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
          color: isCurrentUserProfile ? Colors.black : Colors.white,
        ),
      ),
    );
  }

  Widget showDetails(String title, String value) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
