

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle{
  static const TextStyle headlineTextStyle =TextStyle(
    color: AppColors.whiteColor,
    fontWeight: FontWeight.w900,
    fontSize: 30,
  );

  static const TextStyle headline2TextStyle =TextStyle(
    color: AppColors.grayColor,
    fontWeight: FontWeight.w700,
    fontSize: 25,
  );

  static const TextStyle titleTextStyle =TextStyle(
    color: AppColors.whiteColor,
    fontWeight: FontWeight.w600,
    fontSize: 23,
  );

  static const TextStyle subtitleTextStyle =TextStyle(
    color: AppColors.grayColor,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  static const TextStyle bodyTextStyle =TextStyle(
    color: AppColors.whiteColor,
    fontWeight: FontWeight.w400,
    fontSize: 18,
  );

  static const TextStyle body2titleTextStyle =TextStyle(
    color: AppColors.grayColor,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );
}