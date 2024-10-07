import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_complete_getx/pages/dependency_injection/depedency_controller.dart';
class DependecyInjectionPage extends StatelessWidget {
   DependecyInjectionPage({super.key});

  // its create instance and allocate memory
   // prmanant false
   var a = Get.put(DependecyController()); // both will keep shame memory location
   var aa = Get.put(DependecyController(), permanent: true); // print("${a.hashcode}")// never instance cleared
    var aaa = Get.put(DependecyController(),  tag: '1'); // instance will get differnt memory location
   // it won't create instance and allocate memory until unless we uss this instance
   // fenix false
   var b = Get.lazyPut(() => DependecyController(), fenix: true); // instance never cleared
   // it won't creete instance and allocate memory until unless we use this instance
   // it creates different instances everytime
   var c = Get.create(() => DependecyController());
   // to find instance that is already created
   var bbc = Get.find<DependecyController>();

   // its creates instance and allocate memory
   // its used for async class and method
   var d = Get.putAsync(() async => DependecyController());
  @override
  Widget build(BuildContext context) {
    // this is anothar way to initialise controller
    Get.put(DependecyController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Dependecy Injectioon"),

        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 80,
              color: Colors.green,
              child: Text(bbc.hashCode.toString()),
            ),
            ElevatedButton(onPressed: (){

              print(Get.find<DependecyController>().hashCode);
              print(Get.find<DependecyController>(tag: '1').hashCode);


            }, child: Text("Create"))
          ],
        ),
      ),
    );
  }
}
