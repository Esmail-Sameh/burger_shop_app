import 'package:flutter/material.dart';
import 'package:purger_app_local_json/constants/app_imports.dart';
import 'package:purger_app_local_json/controller/home_controller.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: () {
            controller.getData();
          }),
        );
      },
    );
  }
}
