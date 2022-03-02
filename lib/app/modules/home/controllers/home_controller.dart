import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final tabIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void updateTabIndex(int index) {
    tabIndex.value = index;
  }
}
