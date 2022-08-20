import 'dart:developer';

import 'package:get/get.dart';
import 'package:payment_application/bottom_navigation_modules/model/db_model.dart';
import 'package:payment_application/dashboard_module/view/widget/sliver_app_bar_widget.dart';
import 'package:payment_application/main.dart';

class BottomNavController extends GetxController {
  List<DBModel> data = [];
  addData() async {
    for (int i = 0; i < 11; i++) {
      DBModel dbModel = DBModel(
        name: names[i],
        subName: subNames[i],
        image: userImages[i],
        productName: productName[i],
        productPrice: price[i],
        store: store[i],
        returnTime: returnTime[i],
        address: deliveryAddress[i],
      );
      box.add(dbModel);
    }
    update();
  }

  getData() {
    data = box.values.toList();
    log(data[0].name);
  }

  @override
  void onInit() {
    addData();
    getData();
    super.onInit();
  }
}
