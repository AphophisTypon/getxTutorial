
import 'package:dio/dio.dart';
import 'package:getx_tutorial/models/user_id.dart';

class UsersAPI {
  UsersAPI._();
  static UsersAPI _instance = UsersAPI._();
  static UsersAPI get instance => _instance;

  final dio = Dio();


   Future<List<UserId>> getUsers(int page, {int delay = 0}) async {
    try {
      final Response response = await dio.get('https://reqres.in/api/users',queryParameters: {"page":page, "delay":delay});
      return (response.data['data'] as List).map((e) => UserId.fromMap(e)).toList();
    
    
    } catch (e,s) {
      print('Error on Dio');
      throw Exception('e==${e} s==${s}');
    }
  }
}