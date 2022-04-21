import 'package:app_getx/model/product.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class Purchase extends GetxController {
  var barang = <Barang>[].obs;
  @override
  void onInit() {
    fetchBarang();
    super.onInit();
  }

  void fetchBarang() async {
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      Barang(1, 'Demo Product', 'aby',
          'This is a Product that we are going to show by getX', 300.0),
      Barang(1, 'Demo Product', 'aby',
          'This is a Product that we are going to show by getX', 300.0),
      Barang(1, 'Demo Product', 'aby',
          'This is a Product that we are going to show by getX', 300.0),
      Barang(1, 'Demo Product', 'aby',
          'This is a Product that we are going to show by getX', 300.0),
      Barang(1, 'Demo Product', 'aby',
          'This is a Product that we are going to show by getX', 300.0),
      Barang(1, 'Demo Product', 'aby',
          'This is a Product that we are going to show by getX', 300.0)
    ];

    barang.value = serverResponse;
  }
}
