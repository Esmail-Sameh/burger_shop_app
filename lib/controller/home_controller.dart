import 'package:purger_app_local_json/constants/app_imports.dart';

class HomeController extends GetxController {

  @override
  void onInit() {
    getData();
    super.onInit();
  }
  List<DataModel>? dataList = [];
  bool isLoding = true;

  Future<void> getData() async {
    try {
      isLoding = true;
      String data = await rootBundle.loadString(AppStrings.jsonFile);
      var jsonData = jsonDecode(data) as List;
      dataList = jsonData.map((elemant) => DataModel.fromJson(elemant)).toList();
      print(dataList!.length);
    } catch (error) {
      print(error.toString());
    }
    isLoding = false;
  }


}
