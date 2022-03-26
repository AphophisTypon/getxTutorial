
import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_tutorial/models/pet.dart';

class ReactiveController extends GetxController{

  ///Ele funciona como um observável de uma Stream, diferente das Streams do Bloc Pattern, que tem que obedecer
  ///regras de negócios, e ficam muito amarrados, o COntrolador do GetX permite que através de uma invocaão de 
  ///classe, seja possível construir um observável. 
  ///
  ///POr se tratar de uma classe não nativa, usa seu próprio Widget de escoamento: Obx(), ele ' dedicado
  ///para a reatividade
  
  RxString date = ''.obs;
  RxInt counter = 0.obs;


  RxList<String> items = <String>[].obs;
  RxMap<String,dynamic> mapItems = Map<String,dynamic>().obs;

  Rx<Pet> pet = Pet(name: 'xuxu', age: 1).obs;
  

  ///Não há necessidade de repassar o .value, para dados que não são primitivos

  void increment(){
    counter.value++;
    print(counter.value);
  }

  void getDate(){
    date.value = (DateTime.now()).toString();
  }

  void addItem(){
    items.add(DateTime.now().toString());
  }
  void addMapItem(){
    final String data = DateTime.now().toString();
    mapItems.putIfAbsent(data, () => data);
  }
  void removeMapItem(String key){
    mapItems.remove(key);
  }
  void removeItem(int index){
    items.removeAt(index);
  }
  
  void setPetAge(int age){
    pet.value = pet.value.copyWith(age: age);
  }
}