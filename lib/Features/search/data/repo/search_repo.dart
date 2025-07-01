import 'package:dartz/dartz.dart';
import 'package:preview_appp/Features/home/data/model/BookModel.dart';
import 'package:preview_appp/core/errors/failure.dart';

abstract class SearchRepo{

Future<Either<Failure,List<BookModel>>>requestSearchData({required String query});
}