import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              child: Text(
                "Second page",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  Get.toNamed("/third");
                },
                child: Text("Go to Third Page")
            ),
            ElevatedButton(
                onPressed: (){
                  Get.back();
                },
                child: Text("Back")
            ),
            // Text(Get.parameters['a'].toString()),
            // Text(Get.parameters['b'].toString()),
          ],
        ),
      ),
    );
  }
}
