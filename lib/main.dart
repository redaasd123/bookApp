import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:preview_appp/constance.dart';

import 'Features/splash/presentation/views/splash_view.dart';
void main() {
  runApp(const PreViewApp());
}

class PreViewApp extends StatelessWidget {
  const PreViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor
      ),
      home: SplashView(),
    );
  }
}

