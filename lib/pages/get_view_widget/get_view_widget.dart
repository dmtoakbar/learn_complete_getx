import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_complete_getx/pages/get_view_widget/getview_getwidget_controller.dart';

// to get same instance from get.create(), we will use getWidget
class GetViewWidget extends GetWidget<GetViewWidgetController> {
// class GetViewWidget extends GetView<GetViewWidgetController> {
   GetViewWidget({super.key});
   
   //var getviewController = Get.put(GetViewWidgetController());

   // if  there is only one controller used in one page then we can use getview and getwidget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetView, GetWidget"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Obx(() => Text(controller.count.toString()))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.increment();
          print(controller.hashCode);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
