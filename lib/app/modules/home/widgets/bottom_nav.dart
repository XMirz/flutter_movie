import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_movie/app/modules/home/controllers/home_controller.dart';
import 'package:getx_movie/core/values/colors.dart';
import 'package:heroicons/heroicons.dart';

class BottomNav extends StatelessWidget {
  BottomNav({Key? key}) : super(key: key);
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: const BoxDecoration(
          color: mBackgroundSecondary,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: BottomNavigationBar(
            currentIndex: controller.tabIndex.value,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            selectedItemColor: mAccent,
            unselectedItemColor: mContentColor,
            backgroundColor: Colors.transparent,
            elevation: 0,
            onTap: (index) {
              controller.updateTabIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: HeroIcon(
                  HeroIcons.home,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: HeroIcon(
                  HeroIcons.search,
                ),
              )
            ]),
      ),
    );
  }
}
