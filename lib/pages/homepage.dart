import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_tutorial/bin/controller/home_controller.dart';
import 'package:getx_tutorial/pages/widgets/label_home.dart';
import 'package:getx_tutorial/pages/widgets/list_view_userID.dart';

class Homepage extends StatefulWidget {

  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: _controller,
      builder: (build){
        return const Scaffold(
          body: ListViewUserid(),
      );
    });
  }
}