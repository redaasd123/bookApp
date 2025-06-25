import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/style.dart';
import 'book_action_button.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width *.2),
        child: CustomBookImage(),
      ),
      const SizedBox(height: 30,),
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
      const SizedBox(height: 30,),
      const BookActionButton(),
    ],);
  }
}