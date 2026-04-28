import 'package:bookora/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BookOra());
}

class BookOra extends StatelessWidget {
  const BookOra({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:SplashView(),
        
    );
  }
}
