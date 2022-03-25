import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_tutorial/bin/controller/global_controller.dart';
import 'package:getx_tutorial/pages/homepage.dart';
import 'package:getx_tutorial/pages/splash_page.dart';
import 'package:get/get.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(GlobalController());
    return const GetMaterialApp(home: SplashPage(),
    );
  }
}
