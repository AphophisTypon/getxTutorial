// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_tutorial/bin/controller/home_controller.dart';
import 'package:getx_tutorial/models/user_id.dart';

class ListViewUserid extends StatelessWidget {

  const ListViewUserid({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
    
    return GetBuilder<HomeController>(
      id: 'users',  
      builder: (builder){
        if(builder.loading){
          return Center(child: LinearProgressIndicator());
        }
        return ListView.builder(
          itemBuilder: (context, index){
            final User = builder.users[index];
            return ListTile(
              title: Text(User.first_name),
              subtitle: Text(User.last_name),
              onTap: () => builder.showUserProfile(User),
            );
          },itemCount: builder.users.length,
        );
      }
    );
  }
}