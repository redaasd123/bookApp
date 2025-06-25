import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preview_appp/Features/home/presentation/views/widget/book_rating.dart';
import 'package:preview_appp/Features/home/presentation/views/widget/custom_book_image.dart';
import 'package:preview_appp/core/utils/style.dart';
import 'package:preview_appp/core/utils/widget/custom_button.dart';

import 'book_action_button.dart';
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
          children:  [
           const SafeArea(child:
            const CustomBookDetailsAppBar()),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width *.2),
              child: CustomBookImage(),
            ),
            const SizedBox(height: 43,),
            Text('The jungle Book ',style: Style.textStyle30.copyWith(
              fontWeight: FontWeight.bold
            )),
            const SizedBox(height: 6,),
            Text('Rudyard Kipling ',style: Style.textStyle20.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500
            )),
            const  SizedBox(height: 18,),
            const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            const SizedBox(
              height: 37,
            ),
            const BookActionButton(),
          ],
        ),
      ),
    );
  }
}






