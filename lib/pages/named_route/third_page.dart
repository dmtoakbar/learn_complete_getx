import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              child: Text(
                "Third page",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  Get.toNamed("/second");
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
