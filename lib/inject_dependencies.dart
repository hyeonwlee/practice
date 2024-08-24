import 'package:get/get.dart';
import 'package:practice/controller/starbucks_bottom_nav_controller.dart';
import 'package:practice/provider/connection.dart';
import 'package:practice/repository/product_repository.dart';

Future<void> injectDependencies() async {
  Get.put<StarbucksConnection>(StarbucksConnection.instance);
  Get.put<ProductRepository>(ProductRepository());
  Get.put<StarbucksBottomNavController>(StarbucksBottomNavController());
}