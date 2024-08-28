import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class EditNoteViewBodyWidget extends StatefulWidget {
  EditNoteViewBodyWidget({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBodyWidget> createState() => _EditNoteViewBodyWidgetState();
}

class _EditNoteViewBodyWidgetState extends State<EditNoteViewBodyWidget> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAppBarWidget(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            text: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextfield(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          CustomTextfield(
            onChanged: (value) {
              subTitle = value;
            },
            hintText: widget.note.subTitle,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
