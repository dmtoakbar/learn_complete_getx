import 'package:get/get.dart';
import 'package:learn_complete_getx/pages/binding/binding_page2_controlle.dart';

class BindinggPage2Sep extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BindingPage2Controller());
  }

}