import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:preview_appp/Features/home/data/model/BookModel.dart';
import 'package:preview_appp/Features/search/data/repo/search_repo.dart';
import 'package:preview_appp/core/errors/failure.dart';
import 'package:preview_appp/core/utils/api_service.dart';

class SearchRepoImpl extends SearchRepo{
  final ApiService apiService;
  SearchRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> requestSearchData({required String query})async {
    try {
      var data = await apiService.
      get(endPoint:
      'volumes?Filtering=free-ebooks&Sorting=relevance&q=$query');

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
  Future<Either<Failure, List<BookModel>>> receiveSearchData() {
    throw UnimplementedError();
  }
}