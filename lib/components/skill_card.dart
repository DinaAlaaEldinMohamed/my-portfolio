import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/utils.dart';

class SkillCard extends StatelessWidget {
  final String url;
  const SkillCard({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    bool isMobile = Utils.isMobile(context);

    return Padding(
      padding: EdgeInsets.all(13.w),
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFC4ACA1),
              blurRadius: 6.r,
              spreadRadius: 4.r,
            )
          ],
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
        ),
        child: SizedBox(
          height: isMobile ? 77.h : ScreenUtil().screenWidth / 6.8,
          width: isMobile ? 77.w : ScreenUtil().screenWidth / 6.8,
          child: Padding(
            padding: EdgeInsets.all(isMobile ? 7.w : 30.w),
            child: Image.network(url),
          ),
        ),
      ),
    );
  }
}
