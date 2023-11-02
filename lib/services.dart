import 'dart:convert';
import 'package:http/http.dart' as http;

getUsers() async {
  String api = "https://jsonplaceholder.typicode.com/users/";
  var apiUrl = Uri.parse(api);
  final response = await http.get(apiUrl);
  var responseData = jsonDecode(response.body);

  print(responseData);
}
