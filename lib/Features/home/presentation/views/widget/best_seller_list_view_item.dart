import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:preview_appp/Features/home/data/model/BookModel.dart';
import 'package:preview_appp/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
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
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??'',
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    bookModel.volumeInfo.title ?? "عنوان غير متوفر",
                    style: Style.textStyle20.copyWith(fontFamily: kGtsectraFine),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  bookModel.volumeInfo.authors?.isNotEmpty == true
                      ? bookModel.volumeInfo.authors!.first
                      : "الكاتب غير معروف",
                  style: Style.textStyle14,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Free",
                      style: Style.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    BookRating(
                      rating: (bookModel.volumeInfo.averageRating ?? 0).toInt(),
                      count: bookModel.volumeInfo.ratingsCount ?? 0,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}






