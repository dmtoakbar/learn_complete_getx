import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_complete_getx/pages/workers/workers_controller.dart';

class WorkersPage extends StatelessWidget {
  WorkersPage({super.key});


  var workersController = Get.put(WorkersController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workers"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Obx(() => Text("${workersController.count.toString()}",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            )),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              workersController.incrementCounter();
            }, child: Icon(Icons.add, color: Colors.black, size: 29, ))
          ],
        ),
      ),
    );
  }
}
