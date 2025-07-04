import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';
import 'package:preview_appp/Features/splash/presentation/views/widget/sliding_text.dart';
import 'package:preview_appp/constance.dart';
import 'package:preview_appp/core/utils/app_router.dart';
import 'package:preview_appp/core/utils/assets.dart';

import '../../../../home/presentation/views/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  late Animation <Offset>slidingAnimation;


  @override
  void initState() {
    super.initState();
    initSlideAnimation();
    navigateToHome();
    //single Responsibility principle & refactor code
      }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            AssestsData.kLogo, // غيّر للمسار الصحيح للصورة
            width: 400,
            height: 400,
            fit: BoxFit.contain,
          ),
          Positioned(
            bottom: 120, // ✅ يخلي النص ينزل تحت شويه داخل الصورة
            child: SlidingText(slidingAnimation: slidingAnimation),
          ),
        ],
      ),
    );
  }

  void initSlideAnimation() {
    animationController = AnimationController(vsync: this,
        duration:  const Duration(seconds: 2));
    slidingAnimation = Tween<Offset>(begin: Offset(0, 2)
        ,end:Offset.zero ).animate(animationController);

    animationController.forward();

    slidingAnimation.addListener((){
    });

  }
  void navigateToHome() {
    Future.delayed(const Duration(seconds:  2,),(){
      // Get.to(() => const HomeView(),
      //     transition:Transition.fade,
      //     duration:kTransitionDuration);
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}


