import 'package:http/http.dart' as http;
import 'package:learn_complete_getx/pages/api_getx/model/api_model.dart';
class ApiService {
  Future<List<UserModel>> fetchUserData() async {
    var response =
         await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if(response.statusCode==200) {
      return userModelFromJson(response.body);
    } else {
      throw Exception("network error");
    }
  }
}