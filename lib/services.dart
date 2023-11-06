import 'package:http/http.dart' as http;
import 'dart:convert';

registerUser({required String name, required String email}) async {
  var apiUrl = "https://mhuzaifakhan.pythonanywhere.com/users";
  var api = Uri.parse(apiUrl);
  final response = await http.post(api,
      headers: <String, String>{"Content-Type": "application/json"},
      body: jsonEncode({"name": name, "email": email}));

  if (response.statusCode == 200) {
    return "Successfully Registered!";
    return "Successfully Registered!";
  } else {
    return "An Error Occured During Registration! Please Try Again!";
  }
}
