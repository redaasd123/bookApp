import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:preview_appp/Features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:preview_appp/Features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:preview_appp/core/utils/widget/custom_error_widget.dart';
import 'package:preview_appp/core/utils/widget/custom_progress_indicator.dart';


class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccess){
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 9.0),
                child:  BookListViewItem(
                  bookModel:state.books[index],
                ),
              );
            },
          );
        }else if(state is NewestBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
          return CustomProgressIndicator();
        }

      },
    );
  }
}
