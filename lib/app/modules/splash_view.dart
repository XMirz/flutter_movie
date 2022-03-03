import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_movie/app/routes/app_pages.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/lottie/splash.json',
            width: screenSize.width * 0.5,
            height: screenSize.height * 1,
            alignment: Alignment.center,
            controller: _controller,
            animate: true, onLoaded: (composition) {
          _controller
            ..duration = composition.duration
            ..forward().whenComplete(() => Get.toNamed(Routes.HOME));
        }),
      ),
    );
  }
}
