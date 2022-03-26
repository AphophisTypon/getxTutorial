import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/bin/controller/reactive_controller.dart';

class ReactivePage extends StatelessWidget {

  const ReactivePage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return GetBuilder<ReactiveController>(
         init: ReactiveController(),
         builder: (build){
          return Scaffold(
            // appBar: AppBar(title: const Text(''),),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(()=> Text('Age ${build.pet.value.age}')),
                TextButton(onPressed: (){
                  build.setPetAge(build.pet.value.age + 1);
                }, child: Text('set age'))
              ],)
          //   Obx(
          //   () => ListView(
          //     children: build.mapItems.values
          //         .map(
          //           (e) => ListTile(
          //             title: Text(e),
          //             trailing: IconButton(
          //               icon: Icon(Icons.delete),
          //               onPressed: () => build.removeMapItem(e),
          //             ),
          //           ),
          //         )
          //         .toList(),
          //   ),
          // ),
          //   floatingActionButton:
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       IconButton(onPressed: (){
          //         build.addMapItem();
          //       }, icon: Icon(Icons.add)),
          //     ],
          //   ),
          );
    });
  }
}