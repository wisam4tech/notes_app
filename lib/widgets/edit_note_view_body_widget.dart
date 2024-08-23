import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class EditNoteViewBodyWidget extends StatelessWidget {
  const EditNoteViewBodyWidget({super.key});

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
            text: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextfield(hintText: 'Title'),
          CustomTextfield(
            hintText: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
