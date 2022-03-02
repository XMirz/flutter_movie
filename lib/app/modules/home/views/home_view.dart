import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_movie/app/modules/home/views/screens/home_screen.dart';
import 'package:getx_movie/app/modules/home/views/screens/search_screen.dart';
import 'package:getx_movie/app/modules/home/widgets/bottom_nav.dart';
import 'package:getx_movie/core/values/colors.dart';
import 'package:heroicons/heroicons.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: IndexedStack(
            index: controller.tabIndex.value,
            children: [HomeScreen(), SearchScreen()],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
