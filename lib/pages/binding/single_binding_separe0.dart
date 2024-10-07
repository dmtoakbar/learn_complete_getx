import 'package:get/get.dart';
import 'package:learn_complete_getx/pages/binding/bindin_page_controller.dart';

class BindigPageSep extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BindingPageController());
  }

}