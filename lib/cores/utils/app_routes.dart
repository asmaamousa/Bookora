import 'package:bookora/features/home/presentation/views/book_details_view.dart';
import 'package:bookora/features/home/presentation/views/home_view.dart';
import 'package:bookora/features/search/presentation/views/search_view.dart';
import 'package:bookora/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const khomeView = "/homeview";
  static const kbookDetails = "/bookdetails";
  static const kSearchView = "/search";
  static final router = GoRouter(
    routes: [
      GoRoute(path: "/", builder: (context, state) => SplashView()),

      GoRoute(path: khomeView, builder: (context, state) => HomeView()),
      GoRoute(
        path: kbookDetails,
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(path: kSearchView, builder: (context, state) => SearchView()),
    ],
  );
}
