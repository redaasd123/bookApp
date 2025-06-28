import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:preview_appp/Features/home/data/model/BookModel.dart';
import 'package:preview_appp/Features/home/data/repo/home_repo.dart';
import 'package:preview_appp/Features/home/data/repo/home_repo_impl.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
 final  HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks()async{
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure){
      emit(FeaturedBooksFailure(failure.errMessage));
    }, (books){
      emit(FeaturedBooksSuccess(books));
    });
  }
}
