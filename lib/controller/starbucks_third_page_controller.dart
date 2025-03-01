import 'package:get/get.dart';
import 'package:practice/repository/store_repository.dart';

import '../model/product/product.dart';
import '../repository/product_repository.dart';

class StarbucksThirdPageController extends GetxController {
  final _productRepo = Get.find<ProductRepository>();
  final productList = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    getProductList();
  }

  Future<void> getProductList() async {
    final List<Product> products = [];
    for (int i = 0; i < 10; i++) {
      final res = await _productRepo.getProductList();
      res.fold(
            (l) => print(l),
            (r) => products.add(r.first)
      );
    }
    productList.assignAll(products);
  }
}