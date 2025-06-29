import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/model/BookModel.dart';
import '../../../data/repo/home_repo.dart';
import '../../../data/repo/home_repo_impl.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final  HomeRepo homeRepo;
  Future<void> fetchNewsetBooks()async{
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold((failure){
      emit(NewestBooksFailure(failure.errMessage));
    }, (books){
      emit(NewestBooksSuccess(books));
    });

}}
