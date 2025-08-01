import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/constant.dart';
import 'package:newsapp/core/utils/assets.dart';
import 'package:newsapp/features/home/presentation/views/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  // ده اللي بيهندل التغير في الانيمشن
  late AnimationController animationController;
  late Animation<Offset> slidAnimation;

  @override
  void initState() {
    super.initState();
    // initslidAnimation();
    Navigatetohome();
  }

  // void initslidAnimation() {
  //   animationController = AnimationController(
  //     vsync: this,
  //     duration: const Duration(seconds: 1),
  //   );
  //   slidAnimation = Tween<Offset>(begin: Offset(0, 2), end: Offset.zero)
  //       .animate(animationController);
  //   animationController.forward();
  //   slidAnimation.addListener(() {
  //     setState(() {});
  //   });
  // }

  void Navigatetohome() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: kTransitionduration);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        // AnimatedBuilder(
        //     animation: slidAnimation,
        //     builder: (context, __) {
        //       return SlideTransition(
        //         position: slidAnimation,
        //         child: const Text(
        //           'Read Free Books',
        //           textAlign: TextAlign.center,
        //         ),
        //       );
        //     }),
      ],
    );
  }
}
