import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BindingPage2Controller extends GetxService {
  var pageName="Page 2";
  var count = 0.obs;
  increment()=> count++;
}