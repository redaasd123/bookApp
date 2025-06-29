import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:preview_appp/Features/home/data/model/BookModel.dart';
import 'package:preview_appp/Features/home/presentation/views/widget/book_detail_view_body.dart';

import '../manger/similar_books_cubit/similar_books_cubit.dart';

class BookDetailView extends StatefulWidget {
  const BookDetailView ({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailView> createState() => _BookDetailViewState();
}


class _BookDetailViewState extends State<BookDetailView> {
  
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category:widget.bookModel.volumeInfo.categories![0]);
  }
  @override
  Widget build(BuildContext context) {
    return  BookDetailViewBody(
      bookModel: widget.bookModel);
  }
}
