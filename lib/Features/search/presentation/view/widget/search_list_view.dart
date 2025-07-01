import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:preview_appp/Features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:preview_appp/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:preview_appp/core/utils/widget/custom_error_widget.dart';
import 'package:preview_appp/core/utils/widget/custom_progress_indicator.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.book.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: BookListViewItem(bookModel: state.book[index]),
              );
            },
          );
        } else if (state is SearchFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else if (state is SearchLoading) {
          return CustomProgressIndicator();
        } else {
          // الحالة المبدئية: لسه المستخدم ما عملش بحث
          return const Center(
            child: Text(
              "ابدأ بالبحث عن كتاب...",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          );
        }
      },
    );

  }
}
