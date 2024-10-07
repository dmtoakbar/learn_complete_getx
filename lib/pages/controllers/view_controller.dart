import 'package:get/get.dart';

class ViewController extends GetxController {
  var count=0.obs;
  incrementCounter() {
    count++;
  }
}