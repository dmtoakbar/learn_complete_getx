import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ReactivePage extends StatelessWidget {
  ReactivePage({super.key});
   var count=0.obs;
   //final count=Rx<int>(0);
   //final count=RxInt(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("obx management"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
              Obx( () => Text("${count.toString()}", style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                ),),
              ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
                   count++;
            }, child: Icon(Icons.add, color: Colors.black, size: 29, ))
          ],
        ),
      ),
    );
  }
}
