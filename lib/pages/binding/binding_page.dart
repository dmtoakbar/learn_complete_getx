import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_complete_getx/pages/binding/bindin_page_controller.dart';
class BindingPage extends StatelessWidget {
  const BindingPage({super.key});

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
            //Text("${Get.find<BindingPageController>().pageName.toString()}"),
            ElevatedButton(onPressed: (){
              Get.toNamed('/page2');
            }, child: Text("Navigate to page 2"))
          ],
        ),
      ),
    );
  }
}
