import 'package:bookora/cores/errors/failure.dart';
import 'package:bookora/features/home/data/models/book_model/book_model.dart';
import 'package:bookora/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp extends HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
  
}