import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_movie/app/modules/home/views/screens/home_screen.dart';
import 'package:getx_movie/app/modules/home/views/screens/search_screen.dart';
import 'package:getx_movie/app/modules/home/widgets/bottom_nav.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: IndexedStack(
            index: controller.tabIndex.value,
            children: [HomeScreen(), const SearchScreen()],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
