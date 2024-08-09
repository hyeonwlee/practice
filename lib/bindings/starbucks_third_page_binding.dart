import 'package:get/get.dart';
import '../controller/starbucks_third_page_controller.dart';

class StarbucksThirdPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(StarbucksThirdPageController());
  }
}