import 'package:flutter/cupertino.dart';
import 'package:preview_appp/Features/home/data/model/BookModel.dart';

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
        child: CustomBookImage(
          imageUrl: 'https://plus.unsplash.com/premium_photo-1675432656807-216d786dd468?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YW5pbWFsfGVufDB8fDB8fHww',
        ),
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
      BookRating(
        rating: 9,
        count: 9,
        mainAxisAlignment: MainAxisAlignment.center,
        // rating: bookModel.volumeInfo.ratingsCount ?? 0 , // لو مفيش تقييم نحط 0
        // count: bookModel.volumeInfo.ratingsCount ?? 0,    // لو مفيش عدد مراجعات نحط 0
      ),

      const SizedBox(height: 30,),
      const BookActionButton(),
    ],);
  }
}