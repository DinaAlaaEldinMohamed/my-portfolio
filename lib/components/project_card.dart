import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/models/project_model.dart';
import 'package:my_portfolio/utils.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel project;
  const ProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(13.w), // Responsive padding
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.sp, // Responsive blur radius
              spreadRadius: 3.sp, // Responsive spread radius
            )
          ],
          borderRadius: BorderRadius.circular(10.r), // Responsive border radius
          color: Colors.white,
        ),
        child: SizedBox(
          width: !Utils.isMobile(context)
              ? ScreenUtil().screenWidth / 4
              : ScreenUtil().screenWidth * 0.9,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.w), // Responsive padding
                child: Image.network(project.imgURL),
              ),
              Text(
                project.projectName,
                style: TextStyle(
                  fontSize: 21.sp, // Responsive font size
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h), // Responsive height
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 10.w), // Responsive padding
                child: Text(
                  'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quas ratione vel inventore labore commodi modi quos culpa aut saepe! Alias!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.sp), // Responsive font size
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h, bottom: 6.h),
                child: TextButton(
                  child: Text(
                    'Check it Out',
                    style: TextStyle(fontSize: 17.sp),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
