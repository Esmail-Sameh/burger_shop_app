import 'package:purger_app_local_json/constants/app_colors.dart';
import 'package:purger_app_local_json/constants/app_pages.dart';

import 'constants/app_imports.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.darkGrayColor
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppStrings.homeRoute,
      getPages: AppPages.getPages,

    );
  }
}
