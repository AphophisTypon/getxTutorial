import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/bin/controller/home_controller.dart';

class HomeLabel extends StatelessWidget {

  const HomeLabel({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'text',
      builder: (build){
        return Text('${build.counter}');
    });
    
  }
}