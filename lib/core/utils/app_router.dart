import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:preview_appp/Features/home/data/model/BookModel.dart';
import 'package:preview_appp/Features/home/data/repo/home_repo_impl.dart';
import 'package:preview_appp/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:preview_appp/Features/home/presentation/views/book_detail_view.dart';
import 'package:preview_appp/Features/home/presentation/views/home_view.dart';
import 'package:preview_appp/Features/search/data/repo/search_repo_impl.dart';
import 'package:preview_appp/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:preview_appp/Features/search/presentation/view/search_view.dart';
import 'package:preview_appp/core/utils/serviec_locator.dart';

import '../../Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {

  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';
  static const kResultSearch = '/ResultSearch';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) =>
            HomeView(

            ),
      ),

      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) =>
            BlocProvider(
                create: (context) =>
                    SimilarBooksCubit(
                        getIt.get<HomeRepoImpl>()),
                child: BookDetailView(
                  bookModel: state.extra as BookModel,
                )),
      ),
      GoRoute(path: kSearchView
          , builder: (context, state) =>
              BlocProvider(
                create: (context) => SearchCubit
                  (getIt.get<SearchRepoImpl>()),
                child: SearchView(
                ),
              )),


    ],
  );
}