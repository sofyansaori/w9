import 'dart:html';

import 'package:app_getx/model/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DemoController extends GetxController {
  var cartItems = <Barang>[].obs;
  int get cartCount => cartItems.length;
  double get totalAmount =>
      cartItems.fold(0.0, (sum, element) => sum + element.price);
  addToChart(Barang barang) {
    cartItems.add(barang);
  }

  final storage = GetStorage();
  bool get isDark => storage.read('darkmode') ?? false;
  ThemeData get theme => isDark ? ThemeData.dark() : ThemeData.light();
  void changeTheme(bool val) => storage.write('darkmode', val);
}
