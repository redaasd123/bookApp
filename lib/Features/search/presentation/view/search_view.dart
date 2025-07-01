import 'package:flutter/material.dart';
import 'package:preview_appp/Features/home/data/model/BookModel.dart';
import 'package:preview_appp/Features/search/presentation/view/widget/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key,});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SearchViewBody(),
        ),
      ),
    );
  }
}
