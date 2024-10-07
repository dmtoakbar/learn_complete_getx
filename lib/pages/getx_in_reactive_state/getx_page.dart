import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'getx_controller.dart';
class GetxPage extends StatelessWidget {
  GetxPage({super.key});

  // //ViewController viewController  = ViewController();
  //
  // var viewController = Get.put(GetxPageController());
  // // always only one instance for whole app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx in reactive state"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            GetX<GetxPageController>(
              init: GetxPageController(),
            builder: (getxControlerPage) => Text("${getxControlerPage.count}", style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
            ),)
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              // we can use when we have already use Get.put<GetxPageController>
              // or we have init in getx
              var controller = Get.find<GetxPageController>();
              controller.incrementCounter();
              //viewController.incrementCounter();
            }, child: Icon(Icons.add, color: Colors.black, size: 29, ))
          ],
        ),
      ),
    );
  }
}
