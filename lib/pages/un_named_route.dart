import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_complete_getx/pages/unanmed_route/home_page.dart';
class UnNamedRoute extends StatelessWidget {
  const UnNamedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Un named route"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              onTap: () async {
                Get.offAll(()=> HomePage());
                //Get.off(()=>HomePage());
                // var a = await Get.to(()=> HomePage());
                // print(a.toString());
               // Get.to(()=>HomePage(),
               // arguments: "this is working",
               // transition: Transition.downToUp,
               //   duration: Duration(seconds: 4)
               // );
              },
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
            Text("navigate to next page",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.red
              ),
            ),
          ],
        ),
      ),
    );
  }
}
