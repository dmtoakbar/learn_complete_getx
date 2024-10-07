import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_complete_getx/pages/api_getx/api_controller.dart';
class ApiPage extends StatelessWidget {
  ApiPage({super.key});


  var userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API IN GETX"),
        centerTitle: true,
      ),
      body: Obx(
              () {
                 if(userController.isLoading.value) {
                   return Center(
                     child: CircularProgressIndicator(),
                   );
                 }
                 return ListView.builder(
                     itemCount: userController.userList.length,
                     itemBuilder: (context, index) {
                       return Padding(
                           padding: EdgeInsets.all(10.0),
                         child: Container(
                           color: Colors.lightBlueAccent,
                           child: ListTile(
                             title: Text(userController.userList[index].name),
                             subtitle: Text(userController.userList[index].email),
                           ),
                         ),
                       );
                     }
                 );
              }
      ),
    );
  }
}
