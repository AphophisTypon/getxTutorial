import 'dart:convert';



class UserId {
  final int id;
  final String email;
  final String first_name;
  final String last_name;
  final String avatar;

  UserId({
  required this.id, 
  required this.email, 
  required this.first_name, 
  required this.last_name, 
  required this.avatar}
  );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'first_name': first_name,
      'last_name': last_name,
      'avatar': avatar,
    };
  }

  factory UserId.fromMap(Map<String, dynamic> map) {
    return UserId(
      id: map['id']?.toInt() ?? 0,
      email: map['email'] ?? '',
      first_name: map['first_name'] ?? '',
      last_name: map['last_name'] ?? '',
      avatar: map['avatar'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserId.fromJson(String source) => UserId.fromMap(json.decode(source));
}
