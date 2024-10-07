import 'package:get/get.dart';

class DependecyController extends GetxController {
// its instance is deleted if instance is not being used
}

// GetxConntroller and GetxService are same except GetxService is not deleted after initialised

class DependencySerController extends GetxService {
  // its intance never deleted

  // to delete this instance, we haave to call get.reset();
}