import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:practice/repository/product_repository.dart';
import 'package:practice/repository/store_repository.dart';
import '../model/product/product.dart';
import '../model/store/store.dart';

class StarbucksBottomNavController extends GetxController {
  final currentIndex = 0.obs;

  final isChanged = false.obs;

  void changeIndex(int index){
    switch(index){
      case 0:
        Get.offAllNamed('/starbucks/first');
        currentIndex.value = index;
        break;
      case 1:
        currentIndex.value = index;
      case 2:
        Get.offAllNamed('/starbucks/third');
        currentIndex.value = index;
        break;
    }
  }

  void changePage(){
    isChanged.value = !isChanged.value;
  }

  IconData changeIcon(){
    return isChanged.value ? Icons.format_list_bulleted : Icons.map_outlined;
  }


  var currentPosition = Rxn<LatLng>();
  var isMapReady = false.obs;

  final _storeRepo = Get.find<StoreRepository>();
  final storeList = <Store>[];

  final RxSet<Marker> markers = <Marker>{}.obs;

  @override
  void onInit() {
    super.onInit();
    _getCurrentLocation();
    getStoreList();
    loadStores();
  }

  void _getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return;
      }
    }

    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    currentPosition.value = LatLng(position.latitude, position.longitude);
    isMapReady.value = true;

  }

  Future<void> getStoreList() async {
    final res = await _storeRepo.getStoreList(currentPosition.value!);
    res.fold((l) => print(l), (r) => storeList.addAll(r));
  }

  Future<void> loadStores() async {
    Marker(
      markerId: MarkerId('current position'),
      position: currentPosition.value!,
      icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueBlue),
    );
    for (var store in storeList){
      final location = store.geometry['location'] as Map<String, dynamic>;
      final lat = (location['lat'] as num).toDouble();
      final lng = (location['lng'] as num).toDouble();

      markers.add(
        Marker(
          markerId: MarkerId(store.name),
          position: LatLng(lat, lng),
          infoWindow: InfoWindow(
            title: store.name
          ),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen)
        )
      );
    }
  }

}