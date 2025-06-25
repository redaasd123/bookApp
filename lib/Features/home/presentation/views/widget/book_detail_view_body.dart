import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preview_appp/Features/home/presentation/views/widget/custom_book_image.dart';

import 'custom_book_view_appbar.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
           const SafeArea(child:
            const CustomBookDetailsAppBar()),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width *.17),
              child: CustomBookImage(),
            ),

          ],
        ),
      ),
    );
  }
}



