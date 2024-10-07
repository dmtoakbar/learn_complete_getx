import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:learn_complete_getx/pages/getx_simple_state_manager/getx_simple_manager_controller.dart';
class GetxSimpleStateManager extends StatelessWidget {
  GetxSimpleStateManager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Simple State Manager"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            GetBuilder<SimpleStateManagerController>(
                init: SimpleStateManagerController(),
                // when we want to form some action during initialising
                // initState: (data)=>print("initilised"),
                // // dispose , when our controller removed from memory, then this metho is called
                // dispose: (_)=> print("disposed"),

                builder: (getxControlerPage) => Text("${getxControlerPage.count}", style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                ),)
            ),
            GetBuilder<SimpleStateManagerController>(
              // wehen give id this will not update until we speciafilly update it
              id: "1234",
                builder: (getxControlerPage) => Text("${getxControlerPage.count}", style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                ),)
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              // we can use when we have already use Get.put<GetxPageController>
              // or we have init in getx
              var controller = Get.find<SimpleStateManagerController>();
              controller.incrementCounter();
              //viewController.incrementCounter();
            }, child: Icon(Icons.add, color: Colors.black, size: 29, ))
          ],
        ),
      ),
    );
  }
}
