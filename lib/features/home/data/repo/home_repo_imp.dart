import 'package:bookora/cores/errors/failure.dart';
import 'package:bookora/cores/utils/api_service.dart';
import 'package:bookora/features/home/data/models/book_model/book_model.dart';
import 'package:bookora/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp extends HomeRepo {
  final ApiService apiService;

  HomeRepoImp({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      final data = await apiService.get(
        endpoint:
            'volumes?q=subject:programming&key=AIzaSyCHd1H7HUGxGTddaVfB4CsfkQjc',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if(e is DioException)
      {
         return left(ServerFailure.fromDioError(e));
         }
    return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
