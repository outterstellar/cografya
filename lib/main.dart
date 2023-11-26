import 'package:cografya/screens/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (context, child) =>const MaterialApp(
        title: 'Material App',
        home: MainScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
