import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/components/social_icon.dart';
import 'package:my_portfolio/utils.dart';

class SocialIconsBar extends StatelessWidget {
  const SocialIconsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10.w, // Responsive horizontal position
      top: Utils.mdqh(context) * 0.2,
      child: SizedBox(
        height: 300.h, // Responsive height
        width: 50.w, // Responsive width
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SocialIcon(
              imgURL:
                  'https://eager-williams-af0d00.netlify.app/assets/icons/icons8-twitter-circled.gif',
            ),
            SocialIcon(
              imgURL:
                  'https://eager-williams-af0d00.netlify.app/assets/icons/icons8-instagram.gif',
            ),
            SocialIcon(
              imgURL:
                  'https://eager-williams-af0d00.netlify.app/assets/icons/icons8-linkedin-circled.gif',
            ),
            SocialIcon(
              imgURL:
                  'https://eager-williams-af0d00.netlify.app/assets/icons/icons8-github.gif',
            ),
          ],
        ),
      ),
    );
  }
}
