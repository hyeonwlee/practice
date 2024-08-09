import 'package:get/get.dart';
import 'package:practice/controller/starbucks_first_page_controller.dart';

class StarbucksFirstPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(StarbucksFirstPageController());
  }
}