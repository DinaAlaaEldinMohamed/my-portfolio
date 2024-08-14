import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/components/contact_form.dart';
import 'package:my_portfolio/components/footer.dart';
import 'package:my_portfolio/components/header1.dart';
import 'package:my_portfolio/components/home_page_actions.dart';
import 'package:my_portfolio/components/more_about_me.dart';
import 'package:my_portfolio/components/my_drawer.dart';
import 'package:my_portfolio/components/recent_projects.dart';
import 'package:my_portfolio/components/social_icons_bar.dart';
import 'package:my_portfolio/components/top_skills.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController myScrollController = ScrollController();
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          'Dina Alaa',
          style: TextStyle(
            fontSize: 22.sp,
            color: Color(0xFF4756DF),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 66.h,
        elevation: 2,
        actions: [
          MediaQuery.of(context).size.width <= 600
              ? Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Color(0xFF4756DF),
                      size: 30.sp,
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                )
              : HomePageActions(sc: myScrollController),
        ],
      ),
      endDrawer: MediaQuery.of(context).size.width <= 600
          ? MyDrawer(sc: myScrollController)
          : null,
      floatingActionButton: FloatingActionButton(
        mini: MediaQuery.of(context).size.width <= 600,
        onPressed: () {
          myScrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeIn,
          );
        },
        child: Image.network(
          'https://eager-williams-af0d00.netlify.app/assets/icons/icons8-upward-arrow.gif',
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: myScrollController,
              child: Column(
                children: [
                  Header1(),
                  MoreAboutMe(),
                  SizedBox(height: 50.h),
                  TopSkills(),
                  SizedBox(height: 50.h),
                  RecentProjects(),
                  SizedBox(height: 50.h),
                  ContactForm(),
                  SizedBox(height: 50.h),
                  Footer(),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
            const SocialIconsBar(),
          ],
        ),
      ),
    );
  }
}
