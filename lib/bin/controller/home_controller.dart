
import 'package:get/get.dart';
import 'package:getx_tutorial/api/users_api.dart';
import 'package:getx_tutorial/models/user_id.dart';
import 'package:getx_tutorial/pages/profile_page.dart';

class HomeController extends GetxController{
  int _couter = 0;
  List<UserId> _users = [];
  bool _loading = true;

  bool get loading => _loading;
  int get counter => _couter;
  List<UserId> get users => _users;

  @override
  void onInit() {
    super.onInit();
    print('Dentro de on Init. Feito somente uma vez');
  }

  @override
  void onReady() {
    print('Dentro de on Ready');
    super.onReady();
    this.loadUsers(delay: 7);
  }

  Future<void> loadUsers({int delay = 0}) async{
    this._loading = false;
    final data = await UsersAPI.instance.getUsers(1,delay: delay);
    this._users = data;
    update(['users']);
  }
  
  showUserProfile(UserId user){
    Get.to(ProfilePage(),arguments: user);
  }
}