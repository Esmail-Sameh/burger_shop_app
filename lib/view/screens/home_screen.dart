import 'package:purger_app_local_json/constants/texts_styles.dart';
import 'package:purger_app_local_json/controller/home_controller.dart';
import 'package:purger_app_local_json/view/Widget/tab_bar_widget.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_icons.dart';
import '../../constants/app_imports.dart';
import '../../constants/app_integers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
      return controller.isLoding ? Center(child: CircularProgressIndicator()) : Scaffold(
        backgroundColor: AppColors.darkGrayColor,
        body: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) {
            return SafeArea(
                child: Scaffold(
                  body: Padding(
                    padding: const EdgeInsets.all(AppIntegers.screenPaddingAll),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              AppIcons.menuIcon,
                              color: AppColors.whiteColor,
                            ),
                            Icon(
                              AppIcons.notificationsIcon,
                              color: AppColors.whiteColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppStrings.homeTitleText,
                          style: AppTextStyle.headlineTextStyle,
                        ),
                        Text(
                          AppStrings.homeSubTitleText,
                          style: AppTextStyle.headline2TextStyle,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyTabBar(title: 'Burger', isSelected: true),
                            MyTabBar(title: 'Pizza', isSelected: false),
                            MyTabBar(title: 'Cheese', isSelected: false),
                            MyTabBar(title: 'Pasta', isSelected: false),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        gridViewHomeScreen(controller),
                      ],
                    ),
                  ),
                ));
          },
        ),
      );
    },
    );
  }

  Widget gridViewHomeScreen(HomeController controller) => GridView(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: AppIntegers.bodyPaddingHeight,
      crossAxisSpacing: AppIntegers.bodyPaddingWidth,
      childAspectRatio: 1/1.5,
    ),
    children: List.generate(controller.dataList!.length , (index) => gridViewItem(controller.dataList![index], ) , ),
  );

  Widget gridViewItem (DataModel model){
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.darkGrayColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black54 , width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 130,
            child: Image.asset(model.image),
          ),
          SizedBox(height: AppIntegers.bodyPaddingHeight,),
          Text(model.title , style: AppTextStyle.bodyTextStyle,),
          SizedBox(height: AppIntegers.bodyPaddingHeight,),
          Text(model.subTitle , style: AppTextStyle.body2titleTextStyle,),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$ ${model.price}' , style: AppTextStyle.bodyTextStyle,),
              Icon(AppIcons.shopingCartIcon),
            ],
          ),
        ],
      ),
    );
  }
}
