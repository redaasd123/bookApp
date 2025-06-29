import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:preview_appp/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:preview_appp/core/utils/widget/custom_error_widget.dart';
import 'package:preview_appp/core/utils/widget/custom_progress_indicator.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit,SimilarBooksState>(
        builder: (context,state){
          if(state is SimilarBooksSuccess){
            return SizedBox(
              height: MediaQuery.of(context).size.height * .15,// 30%  من مساحة الشاشة
              child: ListView.builder(
                itemCount: state.book.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: .0),
                      child: CustomBookImage(
                    imageUrl:
                    state.book[index].volumeInfo.imageLinks?.thumbnail??'',
                      ));
                  }),
            );
          }else if(state is SimilarBooksFailure) {
            return CustomErrorWidget(errMessage: state.errMessage);
          }else{
            return CustomProgressIndicator();
          }
        });
  }
}