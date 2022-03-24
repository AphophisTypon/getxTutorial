
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/bin/controller/profile_controller.dart';

class ProfilePage extends StatelessWidget {

  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profile_controller = ProfileController();
    final userData = profile_controller.user;

      return GetBuilder<ProfileController>(
        init: profile_controller,
        builder: (build){
          return Scaffold(
            appBar: AppBar(
              // title: const Text('Profile Page'),
              // backgroundColor: Colors.cyan,
              leading: IconButton(icon: const Icon(Icons.arrow_back),onPressed: ()=> Get.back()),
            ),
            body: SafeArea(
              child: Column(
                children:[ 
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('first_name : ${userData.first_name}'),
                        Text('last_name : ${userData.last_name}'),
                        Text('email ${userData.email}'),
                        Text('id ${userData.id.toString()}'),
                        Image.network(userData.avatar),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(17),child: Text(build.inputText),),
                  CupertinoTextField(onChanged:build.onInputTextChange),
                  CupertinoButton(child: const Text('Aceptar'), 
                  onPressed:()
                  => build.goToBackWithData()
                  // {
                  //   if(build.inputText.length > 0){
                  //     Get.back();
                  //   }else{
                  //     Get.dialog(
                  //     AlertDialog(
                  //       title: Text('ERROR'),
                  //       content: Text('Coloque um valor válido'),
                  //     ));
                  //   }
                  // }
                  )
                ]
              ),
            )
          );
        },
      );
  }
}