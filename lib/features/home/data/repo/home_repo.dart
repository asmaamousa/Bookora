import 'package:bookora/cores/errors/failure.dart';
import 'package:bookora/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future <Either<Failure,List<BookModel>>> fetchBestSellerBooks();
  Future <Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}