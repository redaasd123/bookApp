import 'package:dartz/dartz.dart';
import 'package:preview_appp/Features/home/data/model/BookModel.dart';
import 'package:preview_appp/core/errors/failure.dart';

abstract class HomeRepo{
Future<Either<Failure,List<BookModel>>>fetchNewsetBooks();
Future<Either<Failure,List<BookModel>>>fetchFeaturedBooks();
Future<Either<Failure,List<BookModel>>>fetchSimilarBooks({required String category});


//  دة عشان احدد اية اللي هيتعمل فيي ال home view
//Repository Pattern
}







// abstract NO CREATE OBJECT