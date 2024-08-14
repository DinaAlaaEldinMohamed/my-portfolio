import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenUtil().screenWidth <= 600;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Get In Touch With Me',
          style: TextStyle(
            fontSize: isMobile ? 24.sp : 28.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15.h),
        SizedBox(
          width: isMobile
              ? ScreenUtil().screenWidth * 0.85
              : ScreenUtil().screenWidth * 0.5,
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFC4ACA1),
                  blurRadius: 4,
                  spreadRadius: 2,
                )
              ],
              borderRadius: BorderRadius.circular(8.r),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(isMobile
                  ? 12.w
                  : 18.w), // Decrease padding for larger screens
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                      color: const Color(0xFF4756DF),
                      fontSize: isMobile
                          ? 16.sp
                          : 14.sp, // Decrease font size for larger screens
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Your Name',
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF4756DF),
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
                      ),
                    ),
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                      color: const Color(0xFF4756DF),
                      fontSize: isMobile
                          ? 16.sp
                          : 14.sp, // Decrease font size for larger screens
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Your Email',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF4756DF),
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
                      ),
                    ),
                  ),
                  Text(
                    'Message',
                    style: TextStyle(
                      color: const Color(0xFF4756DF),
                      fontSize: isMobile
                          ? 16.sp
                          : 18.sp, // Keep larger size for message field
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: TextField(
                      minLines: 6,
                      maxLines: 10,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Message',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF4756DF),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(8.w),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h), // Space before the button
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.all(8.0.w),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: isMobile ? 16.sp : 16.sp,
                              ),
                            ),
                          ),
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
    );
  }
}
