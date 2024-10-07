import 'package:get/get.dart';

class GetxPageController extends GetxController {
  var count=50.obs;
  incrementCounter() {
    count++;
  }
}