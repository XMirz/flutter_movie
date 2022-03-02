import 'package:flutter/material.dart';
import 'package:getx_movie/core/values/colors.dart';

ThemeData get darkTheme {
  return ThemeData(
      scaffoldBackgroundColor: mBackground,
      textTheme: ThemeData.dark().textTheme);
}
