import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../model/store/store.dart';
import '../provider/connection.dart';

class StoreRepository{
  final _connection = Get.find<StarbucksConnection>();

  // 지점 리스트 불러오기
  Future<Either<String, List<Store>>> getStoreList(final LatLng currentPosition) async{
    try{
      _connection.setBaseUrl('https://maps.googleapis.com/maps/api/place/nearbysearch/json');
      String apiKey = dotenv.get("GOOGLE_MAP_API_KEY");
      final path='?location=${currentPosition.latitude},${currentPosition.longitude}&rankby=distance&keyword=starbucks&language=ko&type=cafe&key=$apiKey';
      final res = await _connection.get(path);
      print(res.body);
      final json = _connection.getJsonMapOrCrash(res.body);
      final storeList = (json["results"] as Iterable).map((e) => Store.fromJson(e)).toList();
      return right(storeList);
    }catch(_){
      print(_);
      return left('정상적으로 지점 목록 정보를 불러오지 못했어요.');
    }
  }

  // 상품 하나 불러오기
  Future<Either<String, Store>> getStore({required int id}) async{
    try{
      final path='/store/$id';
      final res = await _connection.get(path);
      print(res.body);
      final json = _connection.getJsonMapOrCrash(res.body);
      final store = Store.fromJson(json);
      return right(store);
    }catch(_){
      print(_);
      return left('정상적으로 지점 정보를 불러오지 못했어요.');
    }
  }

  // 상품 하나 생성하기
  Future<Either<String, Store>> createStore({required Store store}) async{
    try{
      const path='/';
      final res = await _connection.post(path, data: jsonEncode(store.toJson()));
      print(res.body);
      // if(res.statusCode != 200) throw("지점 생성에 실패했어요.");
      final json = _connection.getJsonMapOrCrash(res.body);
      final newStore = Store.fromJson(json);
      return right(newStore);
    }catch(_){
      print(_);
      return left('정상적으로 지점을 생성하지 못했어요.');
    }
  }
}