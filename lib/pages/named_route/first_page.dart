import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              child: Text(
                "First page",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  Get.offNamed('/second');
                  // Get.offAllNamed("/second");
                  // Get.toNamed("/second?a=1&b=2");
                },
                child: Text("Go to Second Page")
            ),
            ElevatedButton(
                onPressed: (){
                  Get.back();
                },
                child: Text("Back")
            )
          ],
        ),
      ),
    );
  }
}
