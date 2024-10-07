import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_complete_getx/pages/obx_custom/movie.dart';
class ObxCustomPage extends StatelessWidget {
  ObxCustomPage({super.key});
  // first method
  //var movie=Movie();
  // second method
  var movie = Movie(name: "India Gate", ticket: 200).obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("obx custom"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Obx( () =>
            // first method
                //Text("${movie.name}"
        // second method
        Text("${movie.value.name}"
                  , style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
            ),),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
             // first method
              //movie.name.value="Iron man 1";
              // second method
              movie.value.name="South movie";
              movie.refresh();
            }, child: Text("change", style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}

