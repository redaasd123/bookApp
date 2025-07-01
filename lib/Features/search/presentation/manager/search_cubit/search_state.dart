part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<BookModel> book;
  SearchSuccess({required this.book});
}

final class SearchFailure extends SearchState {
  final String errMessage;

  SearchFailure({required this.errMessage});
}

final class SearchSuggestions extends SearchState {
  final List<String> suggestions;
  SearchSuggestions({required this.suggestions});
}
