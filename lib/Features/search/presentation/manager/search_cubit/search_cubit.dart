import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:preview_appp/Features/home/data/model/BookModel.dart';
import 'package:preview_appp/Features/search/data/repo/search_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo searchRepo;

  SearchCubit(this.searchRepo) : super(SearchInitial());


  Future<void> requestSearchData(String query, {bool isFinalSearch = false}) async {
    if (query.trim().isEmpty) return;

    emit(SearchLoading());

    final result = await searchRepo.requestSearchData(query: query);

    result.fold(
          (failure) {
        emit(SearchFailure(errMessage: failure.errMessage));
      },
          (books) {
            if (isFinalSearch) {
              emit(SearchSuccess(book: books));
            } else {
              final suggestions = books
                  .map((book) => book.volumeInfo.title ?? '')
                  .where((title) => title.isNotEmpty)
                  .toSet()
                  .toList();
              emit(SearchSuggestions(suggestions: suggestions));
            }
      },
    );
  }
}
