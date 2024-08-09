import 'package:get/get.dart';
import '../controller/starbucks_second_page_controller.dart';

class StarbucksSecondPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(StarbucksSecondPageController());
  }
}