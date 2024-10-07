import 'package:get/get.dart';
import 'package:learn_complete_getx/pages/binding/bindin_page_controller.dart';
import 'package:learn_complete_getx/pages/binding/binding_page2_controlle.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BindingPageController());
    Get.lazyPut(() => BindingPage2Controller());
  }

}