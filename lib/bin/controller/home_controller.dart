
import 'package:get/get.dart';
import 'package:getx_tutorial/api/users_api.dart';
import 'package:getx_tutorial/models/user_id.dart';

class HomeController extends GetxController{
  int _couter = 0;
  List<UserId> _users = [];

  int get counter => _couter;
  List<UserId> get users => _users;

  @override
  void onInit() {
    super.onInit();
    print('Dentro de on Init. Feito somente uma vez');
  }

  void increment(){
    this._couter++;
    update(['text'], _couter > 10);
  }

  @override
  void onReady() {
    print('Dentro de on Ready');
    super.onReady();
  }

  Future<void> loadUsers() async{
    final data = await UsersAPI.instance.getUsers(1);
    // this._users = [...data];
    this._users = data;
    update(['users']);
  
  }
}