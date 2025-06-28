part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}
final class NewestBooksLoading extends NewestBooksState {}
final class NewestBooksSuccess extends NewestBooksState {
  List<BookModel> books;
  NewestBooksSuccess(this.books);
}
final class FeaturedBooksFailure extends NewestBooksState {
  final String errMessage;
  FeaturedBooksFailure(this.errMessage);
}
