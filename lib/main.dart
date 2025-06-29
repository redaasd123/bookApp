
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:preview_appp/Features/home/data/repo/home_repo_impl.dart';
import 'package:preview_appp/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:preview_appp/Features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:preview_appp/constance.dart';
import 'package:preview_appp/core/utils/app_router.dart';
import 'package:preview_appp/core/utils/serviec_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const PreViewApp());
}

class PreViewApp extends StatelessWidget {
  const PreViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
      BlocProvider(create: (context)=>FeaturedBooksCubit
        (getIt.get<HomeRepoImpl>())..fetchFeaturedBooks()),
        BlocProvider(create: (context)=>NewestBooksCubit
          (getIt.get<HomeRepoImpl>())..fetchNewsetBooks()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
          GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
