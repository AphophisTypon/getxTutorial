import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_tutorial/bin/controller/home_controller.dart';
import 'package:getx_tutorial/pages/widgets/label_home.dart';

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
        print('build da home');
        return Scaffold(
          appBar: AppBar(title: const Text('Vazio'),backgroundColor: Colors.white,),
          body: 
            const Center(child: HomeLabel()),
        //   GetBuilder<HomeController>(
        //     id: 'text',
        //     builder: (build){
        //       return 
        //     ;
        //   },
        // )
        // ,
      floatingActionButton: FloatingActionButton(onPressed: (){
        _controller.increment();

      },child: const Text('+'),),
      );
    });
  }
}