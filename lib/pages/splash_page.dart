import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_tutorial/bin/controller/splash_controller.dart';

class SplashPage extends StatelessWidget {

  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return GetBuilder(
        init: SplashController(),
        builder: (build) => Scaffold(
            // appBar: AppBar(title: const Text(''),),
            body: Center(
              child: const CircularProgressIndicator()
            ),
        ),
      );
  }
}