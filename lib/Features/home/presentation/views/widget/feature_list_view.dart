import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:preview_appp/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:preview_appp/core/utils/app_router.dart';
import 'package:preview_appp/core/utils/widget/custom_error_widget.dart';
import 'package:preview_appp/core/utils/widget/custom_progress_indicator.dart';

import 'custom_book_image.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess){
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * .3, // 30%  من مساحة الشاشة
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  GestureDetector(
                    onTap: (){
                      GoRouter.of(context).
                      push(AppRouter.kBookDetailsView,
                          extra: state.books[index]);
                    },
                    child: CustomBookImage(
                      imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ??
                          'https://via.placeholder.com/150',
                    ),
                  );
                }),
          );
        }else if(state is FeaturedBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
          return CustomProgressIndicator();
        }

      },
    );
  }
}