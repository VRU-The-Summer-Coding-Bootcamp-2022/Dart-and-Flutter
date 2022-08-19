import 'package:bootcamp_vs/counter/controller/counter_controller.dart';
import 'package:bootcamp_vs/login/view/login_view.dart';
import 'package:bootcamp_vs/notepad/controller/notepad_controller.dart';
import 'package:bootcamp_vs/notepad/view/note_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../counter/view/counter.dart';
import '../login/controller/login_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(CounterController());
    Get.put(LoginController());
    Get.put(NotepadController());

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Choose Page')),
      body: ListView(
        children: [
          navigationOption('Counter', CounterPage(), context),
          navigationOption('Login', LoginPage(title: "Login Page"), context),
          navigationOption('Note', NotePage(title: "Note Page"), context),
        ],
      ),
    );
  }

  Card navigationOption(String title, Widget view, BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text('info'),
        onTap: () {
          Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => view,
            ),
          );
        },
      ),
    );
  }
}
