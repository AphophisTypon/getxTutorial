import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_tutorial/bin/controller/global_controller.dart';
import 'package:getx_tutorial/bin/controller/home_controller.dart';
import 'package:getx_tutorial/bin/controller/nav_controller.dart';
import 'package:getx_tutorial/pages/widgets/product_list_view.dart';

class ProductPage extends StatelessWidget {

  const ProductPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (build){
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Product'),
            actions: [
              GetBuilder<GlobalController>(id: 'favorites', builder: (build) => TextButton(onPressed: (){}, child: Text('Favorites ${build.favorites.length}')))
            ],
            ),
          body: Container(
            child: ProductListView(),
          ),
        );
      }
    ); 
  }
}