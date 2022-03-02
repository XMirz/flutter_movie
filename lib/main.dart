import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_movie/core/values/colors.dart';
import 'package:getx_movie/core/values/theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: darkTheme,
    ),
  );
}
