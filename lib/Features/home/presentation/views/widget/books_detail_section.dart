import 'package:flutter/cupertino.dart';
import 'package:preview_appp/Features/home/data/model/BookModel.dart';

import '../../../../../core/utils/style.dart';
import 'book_action_button.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width *.2),
        child: CustomBookImage(
         imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??''     ),
      ),
      const SizedBox(height: 30,),
      Text(
        textAlign: TextAlign.center
          ,bookModel.volumeInfo.title,style: Style.textStyle30.copyWith(
          fontWeight: FontWeight.bold
      )),
      const SizedBox(height: 6,),
      Text(bookModel.volumeInfo.authors?[0]??' كاتب غير معروف'
          ,style: Style.textStyle20.copyWith(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500
      )),
      const  SizedBox(height: 18,),
      BookRating(
        rating: bookModel.volumeInfo.ratingsCount ?? 0 , // لو مفيش تقييم نحط 0
        count: bookModel.volumeInfo.ratingsCount ?? 0,
        mainAxisAlignment: MainAxisAlignment.center,
        // rating: bookModel.volumeInfo.ratingsCount ?? 0 , // لو مفيش تقييم نحط 0
        // count: bookModel.volumeInfo.ratingsCount ?? 0,    // لو مفيش عدد مراجعات نحط 0
      ),

      const SizedBox(height: 30,),
       BookActionButton(bookModel:bookModel,),
    ],);
  }
}