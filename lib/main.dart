import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:preview_appp/constance.dart';
import 'package:preview_appp/core/utils/app_router.dart';

import 'Features/splash/presentation/views/splash_view.dart';
void main() {
  runApp(const PreViewApp());
}

class PreViewApp extends StatelessWidget {
  const PreViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.
        montserratTextTheme(ThemeData.dark().textTheme)
      ),
      //home : const SplashView(),
    );
  }
}

// https://www.googleapis.com/books/v1/volumes?q=programing





