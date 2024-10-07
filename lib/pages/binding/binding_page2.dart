import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_complete_getx/pages/binding/binding_page2_controlle.dart';
class BindingPage2 extends StatelessWidget {
  BindingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Binding"),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          children: [
            Text("${Get.find<BindingPage2Controller>().pageName.toString()}"),
            ElevatedButton(onPressed: (){
              Get.toNamed('/page1');
            }, child: Text("Navigate to page 1"))
          ],
        ),
      ),
    );
  }
}
