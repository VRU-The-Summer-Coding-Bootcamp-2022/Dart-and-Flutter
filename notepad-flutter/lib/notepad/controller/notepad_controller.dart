import 'dart:convert';

import 'package:bootcamp_vs/login/controller/login_controller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/note.dart';

class NotepadController extends GetxController {
  var notes = [].obs;
  void getall() async {
    LoginController loginController = Get.find();

    var url = Uri.parse('http://127.0.0.1:8000/note/all/');
    var response = await http
        .get(url, headers: {'Authorization': 'token ${loginController.token}'});
    if (response.statusCode == 200) {
      List decoded = json.decode(response.body);
      notes.value = decoded.map((e) => Note.fromJson(e)).toList();
      print(notes.value);
    }
  }
}
