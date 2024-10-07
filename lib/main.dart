import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:learn_complete_getx/pages/api_getx/api_page.dart';
import 'package:learn_complete_getx/pages/binding/bidin/allbindigs.dart';
import 'package:learn_complete_getx/pages/binding/binding_page.dart';
import 'package:learn_complete_getx/pages/binding/binding_page2.dart';
import 'package:learn_complete_getx/pages/binding/single_binding_separe0.dart';
import 'package:learn_complete_getx/pages/binding/single_binding_separete.dart';
import 'package:learn_complete_getx/pages/controllers/view.dart';
import 'package:learn_complete_getx/pages/dependency_injection/dependency_injection_pages.dart';
import 'package:learn_complete_getx/pages/get_view_widget/get_view_widget.dart';
import 'package:learn_complete_getx/pages/get_view_widget/getview_getwidget_controller.dart';
import 'package:learn_complete_getx/pages/getx_in_reactive_state/getx_page.dart';
import 'package:learn_complete_getx/pages/getx_simple_state_manager/getx_simple_state_page.dart';
import 'package:learn_complete_getx/pages/getx_storage/getx_storage_page.dart';
import 'package:learn_complete_getx/pages/internalisation_localisation/inter_local_page.dart';
import 'package:learn_complete_getx/pages/internalisation_localisation/lang_controller.dart';
import 'package:learn_complete_getx/pages/named_route/first_page.dart';
import 'package:learn_complete_getx/pages/named_route/second_page.dart';
import 'package:learn_complete_getx/pages/named_route/third_page.dart';
import 'package:learn_complete_getx/pages/named_route/un_known_route.dart';
import 'package:learn_complete_getx/pages/obx_custom/obx_custom_page.dart';
import 'package:learn_complete_getx/pages/reactive_state/reactive_page.dart';
import 'package:learn_complete_getx/pages/un_named_route.dart';
import 'package:learn_complete_getx/pages/workers/workers_page.dart';
void main() async {
// initialise get storrage befor use ths get_storage
//await GetStorage.init();

// only form getview and getwidget
//Get.put(GetViewWidgetController());
// it create each and everytime different instance , to get same instance we will use getWidget
Get.create(()=>GetViewWidgetController());

  runApp( MyApp());
}

// only form get view and get Widget
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Learning GetView, and GetWidget",
      debugShowCheckedModeBanner: false,
      home: GetViewWidget(),
    );
  }
}

// class MyApp extends StatelessWidget {
//    MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: "Learning Getx",
//       debugShowCheckedModeBanner: false,
//       // separate page binding
//       getPages: [
//         GetPage(name: "/page1", page: ()=> BindingPage(), binding: BindigPageSep()),
//         GetPage(name: "/page2", page: ()=> BindingPage2(), binding: BindinggPage2Sep()),
//
//       ],
//       // end
//       // binding all controller
//       //initialBinding: AllBindings(),
//       // end
//       // for interlisation and localisation
//       translations: Strings(),
//       //Get.deviceLocale,
//       locale: const Locale('en', 'us'),
//       fallbackLocale: const Locale('en', 'us'),
//       // end
//       theme: ThemeData(),
//
//       // get storage
//       home: GetxStoragePage(),
//       // api calling in getx
//       //home: ApiPage(),
//       // Bindig
//       //home: BindingPage(),
//       // Getx dependecy injection
//       //home: DependecyInjectionPage(),
//       // interlisation and localisation
//       //home: InterLocalPage(),
//       // workers
//       //home: WorkersPage(),
//       // Getx simple State manager(builder)
//        //home: GetxSimpleStateManager(),
//       // getx in reactive state
//       //home: GetxPage(),
//        // controller, view, model
//        //home: ViewPage(),
//       // custom obs reactive class
//       // home: ObxCustomPage(),
//       // reactive page
//       //home: ReactivePage(),
//       // named route
//       // initialRoute: "/first",
//       // defaultTransition: Transition.leftToRight,
//       // getPages: [
//       //   GetPage(name: "/first", page: ()=> FirstPage()),
//       //   GetPage(name: "/second", page: ()=> SecondPage()),
//       //   GetPage(name: "/third", page: ()=> ThirdPage())
//       // ],
//       // unknownRoute: GetPage(name: "/unknown", page: ()=> UnKnownPage()),
//
//       // un named route
//       //home: UnNamedRoute(),
//     );
//   }
// }



