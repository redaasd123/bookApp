import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preview_appp/Features/home/presentation/views/widget/similar_book_detail.dart';
import 'books_detail_section.dart';
import 'custom_book_view_appbar.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children:  [
                  SizedBox(height: 20,),
                  const CustomBookDetailsAppBar(),
                  const BookDetailsSection(),
                  Expanded(child: const SizedBox(height: 40,)),
                  SimilarBooksSection(),
                  SizedBox(height: 40,)

                ],
              ),
      
            ),
          )
        ],
      ),
    );
  }
}









