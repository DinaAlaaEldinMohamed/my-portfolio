import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialIcon extends StatelessWidget {
  final String imgURL;
  const SocialIcon({super.key, required this.imgURL});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.white,
      elevation: 5.0,
      child: SizedBox(
        width: 40.w,
        height: 40.h,
        child: Image.network(
          imgURL,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
