import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_complete_getx/pages/internalisation_localisation/controller_lang_all.dart';
class InterLocalPage extends StatefulWidget {
  InterLocalPage({super.key});

  @override
  State<InterLocalPage> createState() => _InterLocalPageState();
}

class _InterLocalPageState extends State<InterLocalPage> {
  // interlisation and localisation
  var langController=Get.put(LangController());

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inter, local"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("how are you !".tr, style: TextStyle(fontSize: 28),),
            SizedBox(height: 20,),
          InkWell(
            onTap: (){
              langController.changeLocale('hi', 'HI');
            },
            child: Container(
              width: 200,
              height: 100,
              padding: EdgeInsets.only(top: 25),
              color: Colors.green,
              child: Text("HINDI",  textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),),
            ),
          ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                langController.changeLocale('en', 'US');
              },
              child: Container(
                width: 200,
                height: 100,
                padding: EdgeInsets.only(top: 25),
                color: Colors.green,
                child: Text("ENGLISH",  textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                langController.changeLocale('fr', 'FR');
              },
              child: Container(
                width: 200,
                height: 100,
                padding: EdgeInsets.only(top: 25),
                color: Colors.green,
                child: Text("FRENCH",  textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
