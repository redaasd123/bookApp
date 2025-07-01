import 'package:flutter/cupertino.dart';
import 'package:preview_appp/Features/home/data/model/BookModel.dart';

import 'best_seller_list_view_item.dart';

class SearchResultListViewItem extends StatelessWidget {
  final BookModel bookModel; // استقباله هنا عادي

  const SearchResultListViewItem({super.key, required this.bookModel}); // بدون required

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
              (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 9.0),
              child: BookListViewItem(bookModel: bookModel),
            );
          },
          childCount: 10,
        ),
      ),
    );
  }
}
