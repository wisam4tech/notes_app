import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/edit_note_view_body_widget.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  //static String id = 'EditNoteView';
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBodyWidget(
        note: note,
      ),
    );
  }
}
