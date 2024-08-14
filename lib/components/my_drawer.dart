import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/components/home_page_actions.dart';

class MyDrawer extends StatelessWidget {
  final ScrollController sc;
  const MyDrawer({super.key, required this.sc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: const Color(0xFF4756DF),
            size: 24.sp, // Use ScreenUtil for scaling icon size
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w), // Responsive padding
          child: HomePageActions(sc: sc),
        ),
      ),
    );
  }
}
