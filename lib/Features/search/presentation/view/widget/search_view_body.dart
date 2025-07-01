import 'package:flutter/material.dart';
import 'package:preview_appp/Features/search/presentation/view/widget/custom_search_text_field.dart';
import 'package:preview_appp/Features/search/presentation/view/widget/search_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const CustomSearchTextField(),
                  const SizedBox(height: 10),
                    SearchListView(),

                ],
              ),
            ),
          ),
        )
      ],

    );
  }
}

