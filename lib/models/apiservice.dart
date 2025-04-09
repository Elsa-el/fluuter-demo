// services/api_service.dart
import 'dart:convert';
import 'package:demo/models/usermodel.dart';
import 'package:http/http.dart' as http;
import 'usermodel.dart';

Future<User> fetchUser(int id) async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/users/$id'));
  

  if (response.statusCode == 200) {
    return User.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load user');
  }
}
