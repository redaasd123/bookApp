import 'package:go_router/go_router.dart';
import 'package:preview_appp/Features/home/presentation/views/home_view.dart';

import '../../Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter{

  static const kHomeView = '/HomeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}