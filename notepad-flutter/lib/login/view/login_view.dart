import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  TextEditingController username_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  LoginPage({Key? key, this.title = 'Counter'}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: username_controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Type Your Username',
                  ),
                )),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: password_controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Type Your Password',
                  ),
                )),
            Obx(
              () => Text(
                '${controller.token}',
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          controller.login(username_controller.text, password_controller.text);
        }),
        tooltip: 'Login',
        child: const Icon(Icons.login),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
