import 'package:purger_app_local_json/test.dart';
import 'package:purger_app_local_json/view/screens/cart_screen.dart';
import 'package:purger_app_local_json/view/screens/detils_screen.dart';

import 'app_imports.dart';

class AppPages {

  static List<GetPage> getPages = [
    GetPage(
      name: AppStrings.homeRoute,
      page: () => const HomeScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.detileRoute,
      page: () => const DetilsScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.cartRoute,
      page: () => const CartScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.testRoute,
      page: () => const TestScreen(),
      transition: Transition.noTransition,
    ),

  ];

}
