import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

import 'package:practice/provider/connection.dart';
import '../model/product/product.dart';

class ProductRepository{
  final _connection = Get.find<StarbucksConnection>();

  // 상품 리스트 불러오기
  Future<Either<String, List<Product>>> getProductList() async{
    try{
      _connection.setBaseUrl("https://foodish-api.com");
      final path='/api/images/dessert';
      final res = await _connection.get(path);
      print(res.body);
      final json = _connection.getJsonMapOrCrash(res.body);
      final imageUrl = json["image"] as String;
      final productList = [Product(images: imageUrl)];
      //final productList = (json["image"] as Iterable).map((e) => Product.fromJson(e)).toList();
      return right(productList);
    }catch(_){
      print(_);
      return left('정상적으로 상품 목록 정보를 불러오지 못했어요.');
    }
  }

  // 상품 하나 불러오기
  Future<Either<String, Product>> getProduct({required String name}) async{
    try{
      final path='/api/images/dessert/$name';
      final res = await _connection.get(path);
      print(res.body);
      final json = _connection.getJsonMapOrCrash(res.body);
      final product = Product.fromJson(json);
      return right(product);
    }catch(_){
      print(_);
      return left('정상적으로 상품 정보를 불러오지 못했어요.');
    }
  }

  // 상품 하나 생성하기
  Future<Either<String, Product>> createProduct({required Product product}) async{
    try{
      const path='/api/images/dessert';
      final res = await _connection.post(path, data: jsonEncode(product.toJson()));
      print(res.body);
      // if(res.statusCode != 200) throw("상품 생성에 실패했어요.");
      final json = _connection.getJsonMapOrCrash(res.body);
      final newProduct = Product.fromJson(json);
      return right(newProduct);
    }catch(_){
      print(_);
      return left('정상적으로 상품을 생성하지 못했어요.');
    }
  }
}