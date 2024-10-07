import 'package:get/get.dart';
import 'package:learn_complete_getx/pages/api_getx/model/api_model.dart';
import 'package:learn_complete_getx/pages/api_getx/service/api_service.dart';

class UserController extends GetxController {
  var isLoading = true.obs;
  var userList = <UserModel>[].obs;
  fetchUsers() async {
    try {
      isLoading(true);
      var userData = await ApiService().fetchUserData();
      userList.addAll(userData);
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }
}