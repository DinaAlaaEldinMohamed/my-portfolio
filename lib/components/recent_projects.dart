import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/components/project_card.dart';
import 'package:my_portfolio/constants.dart';

class RecentProjects extends StatelessWidget {
  const RecentProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Some of my Recent Projects',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.h),
        Wrap(
          spacing: 10.w,
          runSpacing: 10.h,
          children: Constants.projects
              .map((project) => ProjectCard(project: project))
              .toList(),
        ),
      ],
    );
  }
}
