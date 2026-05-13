import 'package:bookora/features/home/presentation/views/book_details_view.dart';
import 'package:bookora/features/home/presentation/views/home_view.dart';
import 'package:bookora/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
static const khomeView="/homeview";
static const kbookDetails="/bookdetails";

  static final router=GoRouter(routes: [
GoRoute(path: "/",
builder:(context, state) => SplashView(),
),

GoRoute(path: khomeView,
builder: (context, state) => HomeView(),
)
,
GoRoute(path: kbookDetails,
builder: (context, state) => BookDetailsView(),
)
]);

}