import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/bin/controller/global_controller.dart';
import 'package:getx_tutorial/models/product.dart';


class ProductListView extends StatelessWidget {

  const ProductListView({ Key? key }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      // final controller = Get.find<GlobalController>()     ;
      return GetBuilder<GlobalController>(
        id: 'products',
        builder: (build){
        return ListView.builder(
          itemCount: build.products.length,
          itemBuilder: (context, index){
            final Product product = build.products[index];
            return ListTile(
              title: Text(product.name),
              subtitle: Text('USD ${product.price}'),
              trailing: IconButton(onPressed: (){
                build.onFavorite(index, !product.isFavorite);
              }, icon: Icon(Icons.favorite,color : (product.isFavorite == true ? Colors.blue : Colors.grey))),
            );
          }
        );
      }
    );
  }
}