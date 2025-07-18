part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksLoading extends FeaturedBooksState {}
final class FeaturedBooksSuccess extends FeaturedBooksState {
  List<BookModel> books;
  FeaturedBooksSuccess(this.books);
}
final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;
   FeaturedBooksFailure(this.errMessage);
}
