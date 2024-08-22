import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body_widget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String id = 'NotesView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyanAccent,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: NotesViewBodyWidget(),
    );
  }
}
