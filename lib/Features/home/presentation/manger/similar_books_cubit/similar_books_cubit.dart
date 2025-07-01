import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:preview_appp/Features/home/data/model/BookModel.dart';

import '../../../data/repo/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo,) : super(SimilarBooksInitial());


  final  HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category})async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBooksFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(book: books));
    });
  }
}
