
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/models/product.dart';

class GlobalController extends GetxController{

  Map<String,Product> _favorites = Map();

  List<Product> _products = [];

  List<Product> get products => _products;
  Map<String,Product> get favorites => _favorites;
  @override
  void onInit() {
    print('Starting Global Controller');
    super.onInit();
    _loadProducts();
  }

  Future<void> _loadProducts() async{
    final String produsctString = await rootBundle.loadString('assets/products.json');
    
    _products = (jsonDecode(produsctString) as List).map((e) {
      return Product.fromMap(e);
    }).toList();
    update(['products']);
  }

  onFavorite(int index, bool favorite){
    Product product = this._products[index];
    product.isFavorite = favorite;
    if(favorite){
      this._favorites[product.name] = product;
    }else{
      this._favorites.remove(product.name);
    }
    update(['products','favorites']);
  }
}