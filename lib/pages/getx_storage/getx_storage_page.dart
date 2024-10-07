import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetxStoragePage extends StatelessWidget {
  GetxStoragePage({super.key});

  var box = GetStorage();
  var name = "123456".obs;
  
  var emailController = TextEditingController();
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get  storage"),
        centerTitle: true,
      ),
      body: Center(
         child: Column(
           mainAxisSize: MainAxisSize.max,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             TextField(
               controller: emailController,
               decoration: InputDecoration(
                 hintText: "verify email",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(18)
                 )
               ),
             ),
             ElevatedButton(onPressed: (){
               if(GetUtils.isEmail(emailController.text)){
                 box.write('name', emailController.text);
               }
             }, child: Text("Verify Email")),
             ElevatedButton(onPressed: (){
              box.write('name', 'amit');
              Get.snackbar("saved", "added data successfully", snackPosition: SnackPosition.TOP);
             }, child: Text("Write")),
             SizedBox(height: 50,),
             Obx(() => Text("${name.toString()}"),),
             SizedBox(height: 50,),
             ElevatedButton(onPressed: (){
               name.value = box.read('name');
             }, child: Text("Read"))
           ],
         ),
      ),
    );
  }
}