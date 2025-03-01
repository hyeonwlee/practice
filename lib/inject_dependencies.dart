import 'package:get/get.dart';
import 'package:practice/controller/starbucks_bottom_nav_controller.dart';
import 'package:practice/provider/connection.dart';
import 'package:practice/repository/product_repository.dart';
import 'package:practice/repository/store_repository.dart';

Future<void> injectDependencies() async {
  Get.put<StarbucksConnection>(StarbucksConnection.instance);
  Get.put<ProductRepository>(ProductRepository());
  Get.put<StoreRepository>(StoreRepository());
  Get.put<StarbucksBottomNavController>(StarbucksBottomNavController());
}