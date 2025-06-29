import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:preview_appp/Features/home/data/model/BookModel.dart';
import 'package:preview_appp/Features/home/presentation/views/widget/custom_book_image.dart';
import 'package:preview_appp/constance.dart';
import 'package:preview_appp/core/utils/app_router.dart';
import 'package:preview_appp/core/utils/style.dart';
import '../../../../../core/utils/assets.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height *.2,
            child: AspectRatio(
              aspectRatio: 2.5/4,
              child: CustomBookImage(
                  imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail),
            ),
          ),
          const SizedBox(width: 30,),
           Expanded(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                 SizedBox(
                  width: MediaQuery.of(context).size.width *.5,
                    child:   Text(
                      style: Style.textStyle20.copyWith(
                        fontFamily: kGtsectraFine
                      ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        bookModel.volumeInfo.title)),
                const SizedBox(height: 3,),
                 Text(
                    style: Style.textStyle14,
                    maxLines: 2,
                    bookModel.volumeInfo.language),
               const SizedBox(height: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Free",
                  style: Style.textStyle20
                    .copyWith(
                    fontWeight: FontWeight.bold
                  ),),
                    //Spacer(),
                    BookRating(
                      rating: bookModel.volumeInfo.ratingsCount ?? 0 , // لو مفيش تقييم نحط 0
                      count: bookModel.volumeInfo.ratingsCount ?? 0,    // لو مفيش عدد مراجعات نحط 0
                    ),
                ],),

              ],
                     ),
           )
        ],
      ),
    );
  }
}





