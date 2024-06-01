import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class MyTabBar extends StatelessWidget {
  String title;
  bool isSelected;

  MyTabBar({required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: isSelected ? AppColors.whiteColor: AppColors.grayColor,
        fontSize: 22,
        fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400
      ),
    );
  }
}
