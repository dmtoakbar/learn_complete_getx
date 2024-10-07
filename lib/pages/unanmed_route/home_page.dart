import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx learning"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Get.back(result: "this is from next");
              },
              child: Container(
                width: 100,
                height: 100,
               // child: Text(Get.arguments.toString()),
                color: Colors.deepOrangeAccent,
              ),
            ),
            Text("Go")
          ],
        ),
      ),
    );
  }
}