import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/pages/home_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(900, 1024),
      builder: (context, child) {
        return MaterialApp(
          title: 'Dina Alaa Portfolio',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: TextTheme(
              bodyMedium: TextStyle(fontSize: 16.sp),
              bodySmall: TextStyle(fontSize: 14.sp),
            ),
          ),
          home: HomePage(),
          builder: DevicePreview.appBuilder,
        );
      },
    );
  }
}
