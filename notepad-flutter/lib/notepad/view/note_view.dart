import 'package:bootcamp_vs/notepad/view/note.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/notepad_controller.dart';
import '../models/note.dart';

class NotePage extends StatelessWidget {
  NotePage({Key? key, this.title = 'Counter'}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    NotepadController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
      ),
      body: Center(child: Obx(
        () {
          if (controller.notes.isNotEmpty)
            return ListView.builder(
              itemCount: controller.notes.length,
              itemBuilder: (context, index) {
                Note note = controller.notes[index];
                return Card(
                  child: ListTile(
                    onTap: (() {
                      Get.to(NoteView(note));
                    }),
                    title: Text(note.title ?? ''),
                    subtitle: Text(note.text ?? ''),
                  ),
                );
              },
            );
          else {
            return Container();
          }
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          controller.getall();
        }),
        tooltip: 'Login',
        child: const Icon(Icons.login),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
