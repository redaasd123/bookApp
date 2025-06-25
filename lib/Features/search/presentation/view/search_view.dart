import 'package:flutter/material.dart';
import 'package:preview_appp/Features/search/presentation/view/widget/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: SearchViewBody()),
    );
  }
}
