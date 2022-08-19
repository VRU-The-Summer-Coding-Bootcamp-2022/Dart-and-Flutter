import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  var token = ''.obs;

  void login(String username, String password) async {
    var url = Uri.parse('http://127.0.0.1:8000/api-auth/');
    var response = await http
        .post(url, body: {'username': username, 'password': password});
    if (response.statusCode == 200) {
      var decoded = json.decode(response.body);
      token(decoded['token']);
    }
  }
}
