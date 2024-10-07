import 'package:get/get.dart';

class WorkersController extends GetxController {
  var count=0.obs;
  incrementCounter() {
    count++;

  }

  // best place to use worker is in oninit method
@override
  void onInit() {
    ever(count, (callback) => print("ever, print each and every time"));
    everAll([count], (callback) => print("print when value change"));
    once(count, (callback) => print("once"));
    // called every time when value changes with duration
    debounce(count, (callback) => print("debounce"),
    time: Duration(seconds: 2)
    );

    super.onInit();
  }

}