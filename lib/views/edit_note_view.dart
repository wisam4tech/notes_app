import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_note_view_body_widget.dart';
import 'package:notes_app/widgets/notes_view_body_widget.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = 'EditNoteView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBodyWidget(),
    );
  }
}
