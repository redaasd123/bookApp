import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_book_view_appbar.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
           const SafeArea(child:
            const CustomBookDetailsAppBar()),
          ],
        ),
      ),
    );
  }
}



