import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/note.dart';

class NoteView extends StatelessWidget {
  Note note;
  NoteView(this.note, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController body_controller = TextEditingController();
    body_controller.text = note.text ?? '';
    return Scaffold(
      appBar: AppBar(
        title: Text("${note.title}"),
      ),
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            maxLines: 10,
            controller: body_controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Type Your Note',
            ),
          )),
    );
  }
}
