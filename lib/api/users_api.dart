
import 'package:dio/dio.dart';
import 'package:getx_tutorial/models/user_id.dart';

class UsersAPI {
  UsersAPI._();
  static UsersAPI _instance = UsersAPI._();
  static UsersAPI get instance => _instance;

  final dio = Dio();


   Future<List<UserId>> getUsers(int page) async {
    try {
      final Response response = await dio.get('https://reqres.in/api/users',queryParameters: {"page":page});
      return (response.data['data'] as List).map((e) => UserId.fromJson(e)).toList();
    
    
    } catch (e,s) {      
      throw Exception('e==${e} s==${s}');
    }
  }
}