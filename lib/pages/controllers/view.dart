import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_complete_getx/pages/controllers/view_controller.dart';
class ViewPage extends StatelessWidget {
  ViewPage({super.key});

   //ViewController viewController  = ViewController();

  var viewController = Get.put(ViewController());
  // always only one instance for whole app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("controller, view, model"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Obx( () => Text("${viewController.count}", style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
            ),),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              viewController.incrementCounter();
            }, child: Icon(Icons.add, color: Colors.black, size: 29, ))
          ],
        ),
      ),
    );
  }
}
