import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/bin/controller/nav_controller.dart';
import 'package:getx_tutorial/pages/homepage.dart';
import 'package:getx_tutorial/pages/product_page.dart';

class NavPage extends StatelessWidget {

  const NavPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: NavController(),
      builder: (build){
      return Scaffold(
        appBar: AppBar(title: Text('Nav Center'),backgroundColor: Colors.cyan,),
        body: Column(
          children: [
            ElevatedButton(onPressed: (){
              Get.to(ProductPage());
            }, child: Text('Product')),
            ElevatedButton(onPressed: (){
              Get.to(Homepage());
            }, child: Text('User')),
          ],
        ),  
      );
    });
  }
}