import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:preview_appp/Features/home/data/model/BookModel.dart';
import 'package:preview_appp/Features/home/data/repo/home_repo.dart';
import 'package:preview_appp/core/errors/failure.dart';
import 'package:preview_appp/core/utils/api_service.dart';

class HomeRepoImpl extends HomeRepo{
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {

    try {
      var data = await apiService.get(endPoint:
      'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming');

      List<BookModel> books = [];
      if (data['items'] != null && data['items'] is List) {
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks()async {
    try {
      var data = await apiService.
      get(endPoint:'volumes?Filtering=free-ebooks&Sorting=newest&q=computer science');

      List<BookModel> books = [];
      if (data['items'] != null && data['items'] is List) {
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
      }
        return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category})async {
    try {
      var data = await apiService.
      get(endPoint:
      'volumes?Filtering=free-ebooks&Sorting=relevance&q=computer science');

      List<BookModel> books = [];
      if (data['items'] != null && data['items'] is List) {
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }}














// //
// try {
// Map<String,dynamic>  data = await apiService.get(endPoint:
// 'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programing');
//
// List<dynamic> items=  data["items"];
// List<BookModel> information = [];
// for(var item in items){
// information.add(BookModel.fromJson(item));
// }
//
// } on Exception catch (e) {
// // TODO
// }
