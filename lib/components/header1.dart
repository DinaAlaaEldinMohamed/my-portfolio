import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header1 extends StatelessWidget {
  const Header1({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenUtil().screenWidth <= 600;

    return Column(
      children: [
        Wrap(
          spacing: isMobile ? 0 : 20.w,
          runSpacing: isMobile ? 10.h : 20.h,
          children: [
            SizedBox(
              width: isMobile
                  ? ScreenUtil().screenWidth
                  : ScreenUtil().screenWidth / 2,
              height: isMobile
                  ? ScreenUtil().screenHeight / 2
                  : ScreenUtil().screenHeight - 70.h,
              child: Padding(
                padding: EdgeInsets.all(isMobile ? 3.w : 10.w),
                child: Image.asset(
                  'assets/images/profile.jpg',
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(
              width: isMobile ? ScreenUtil().screenWidth * 0.85 : 380.w,
              height: isMobile
                  ? ScreenUtil().screenHeight / 2
                  : ScreenUtil().screenHeight - 70.h,
              child: Center(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8,
                        spreadRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(6.r),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(6.w),
                        child: Text(
                          'About Me',
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.w),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia sed dolorem fugit sapiente porro veniam pariatur dolore nostrum delectus inventore tempore minus nemo, iste ullam illo laboriosam maiores repudiandae quos!',
                          style: TextStyle(
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
