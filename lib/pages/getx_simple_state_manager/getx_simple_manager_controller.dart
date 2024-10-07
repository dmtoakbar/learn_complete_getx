import 'package:get/get.dart';

class SimpleStateManagerController extends GetxController {
  var count=0;
  incrementCounter() {
    count++;
    //update();
    // to update specific builder
    update(['1234']);
  }
  @override
  void onInit() {
    print("inilised");
    super.onInit();
  }
  @override
  void onClose() {
    print("on close called");
    super.onClose();
  }
}