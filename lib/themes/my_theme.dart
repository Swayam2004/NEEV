import 'package:flutter/material.dart';
import 'package:neev/constants/colors.dart';

// light theme
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    // seedColor: Colors.deepPurple,
    seedColor: AppColor.primaryColor,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
);

// dark theme
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColor.primaryColor,
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
);
