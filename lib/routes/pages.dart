import 'package:get/get.dart';
import 'package:practice/bindings/starbucks_first_page_binding.dart';
import 'package:practice/bindings/starbucks_third_page_binding.dart';
import 'package:practice/view/starbucks_bottom_nav_page.dart';
import 'package:practice/view/starbucks_first_page.dart';
import 'package:practice/view/starbucks_third_page.dart';
import '../bindings/starbucks_second_page_binding.dart';
import '../view/starbucks_second_page.dart';

part './routes.dart';

abstract class Pages{
  static final List<GetPage> allPages = [
    GetPage(
      name: Routes.StarbucksFirst,
      page: () => const StarbucksFirstPage(),
      binding: StarbucksFirstPageBinding(),
    ),
    GetPage(
        name: Routes.StarbucksSecondOne,
        page: () => const StarbucksSecondOnePage(),
        binding: StarbucksSecondPageBinding()),
    GetPage(
        name: Routes.StarbucksSecondTwo,
        page: () => const StarbucksSecondTwoPage(),
        binding: StarbucksSecondPageBinding()),
    GetPage(
        name: Routes.StarbucksBottomNav,
        page: () => const StarbucksBottomNavPage()),
    GetPage(
        name: Routes.StarbucksThird,
        page: () => StarbucksThirdPage(),
        binding: StarbucksThirdPageBinding())
  ];
}