import 'package:get/get.dart';

import '../model/product.dart';
import '../repository/product_repository.dart';

class StarbucksThirdPageController extends GetxController {
  final _repo = Get.find<ProductRepository>();
  final productList = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    getProductList();
  }

  /*Future<void> getProductList() async {
    final res = await _repo.getProductList();
    res.fold((l) => print(l), (r) => productList.addAll(r));
  }*/

  Future<void> getProductList() async {
    final List<Product> products = [];
    for (int i = 0; i < 10; i++) {
      final res = await _repo.getProductList();
      res.fold(
            (l) => print(l),
            (r) => products.add(r.first)
      );
    }
    productList.assignAll(products);
  }
}