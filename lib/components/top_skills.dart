import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/components/skill_card.dart';
import 'package:my_portfolio/utils.dart';

class TopSkills extends StatelessWidget {
  const TopSkills({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = Utils.isMobile(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'My Top Skills',
          style: TextStyle(
            fontSize: isMobile ? 20.sp : 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15.h),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 10.w : 20.w,
          ),
          child: Wrap(
            spacing: isMobile ? 8.w : 16.w,
            runSpacing: isMobile ? 8.h : 16.h,
            alignment: WrapAlignment.center,
            children: const [
              SkillCard(
                url:
                    'https://cdn.iconscout.com/icon/free/png-256/flutter-2038877-1720090.png',
              ),
              SkillCard(
                url:
                    'https://user-images.githubusercontent.com/26507463/53453892-49908900-3a04-11e9-9dce-77ed3d694326.png',
              ),
              SkillCard(
                url:
                    'https://cdn4.iconfinder.com/data/icons/google-i-o-2016/512/google_firebase-2-512.png',
              ),
              SkillCard(
                url: 'https://cdn-icons-png.flaticon.com/512/226/226777.png',
              ),
              SkillCard(
                url:
                    'https://cdn.iconscout.com/icon/free/png-256/python-3521655-2945099.png',
              ),
              SkillCard(
                url:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Git_icon.svg/1024px-Git_icon.svg.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
