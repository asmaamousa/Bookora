import 'package:bookora/cores/utils/app_routes.dart';
import 'package:bookora/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BookOra());
}

class BookOra extends StatelessWidget {
  const BookOra({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig:AppRoutes.router ,
     debugShowCheckedModeBanner: false,
      // home:SplashView(),
      theme: ThemeData().copyWith(
        textTheme: GoogleFonts.alikeAngularTextTheme()
        // abhayaLibreTextTheme()
      ),
    );
  }
}

