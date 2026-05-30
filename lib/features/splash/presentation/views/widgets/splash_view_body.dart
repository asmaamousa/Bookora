import 'package:bookora/constantes.dart';
import 'package:bookora/cores/utils/app_routes.dart';
import 'package:bookora/cores/utils/assets.dart';
import 'package:bookora/features/home/presentation/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSlidingAnimation();

    navigateHome();
    print("Navigating...");
    // slidingAnimation.addListener((){setState(() {

    // });});
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
    // لازم اي كونترولر يحصلة ديسبوز
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsData.logo),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: slidingAnimation,
              child: Text("@book store"),
            );
          },
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 6),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void navigateHome() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRoutes.khomeView);
      // Get.to(() => HomeView(), transition: Transition.fade, duration: kTransiTionDuration);
    });
  }
}

// #f6e0b7
