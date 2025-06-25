import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:preview_appp/Features/search/presentation/view/widget/custom_search_text_field.dart';
import 'package:preview_appp/core/utils/style.dart';

import '../../../../home/presentation/views/widget/best_seller_list_view_item.dart';
import '../../../../home/presentation/views/widget/search_result_list_view_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSearchTextField(),
                const SizedBox(height: 16,),
                Text('Search Result',
                  style: Style.textStyle18,),
                const SizedBox(height: 16,),
              ],
            ),
          ),
        ),
        SearchResultListViewItem(),
      ],
    );
  }
}



