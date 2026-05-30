import 'package:bookora/constantes.dart';
import 'package:bookora/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: kPrimaryColor, body: SplashViewBody());
  }
}
