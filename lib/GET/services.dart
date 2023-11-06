import 'dart:convert';
import 'package:http/http.dart' as http;
import 'user_model.dart';

Future<List<UserModel>> getUsers() async {
  String apiUrl = "https://jsonplaceholder.typicode.com/users";
  var response = await http.get(Uri.parse(apiUrl));
  var responseData = jsonDecode(response.body);

  List<UserModel> users = [];
  for (var responseJson in responseData) {
    users.add(UserModel.fromJson(responseJson));
  }
  return users;
}
