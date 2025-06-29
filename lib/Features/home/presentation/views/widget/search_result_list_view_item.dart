import 'package:flutter/cupertino.dart';

import 'best_seller_list_view_item.dart';

class SearchResultListViewItem extends StatelessWidget {
  const SearchResultListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
              (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 9.0),
              //child: const BookListViewItem(),
            );
          },
          childCount: 10,
        ),
      ),
    );
  }
}