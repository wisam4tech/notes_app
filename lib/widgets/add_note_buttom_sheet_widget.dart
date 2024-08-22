import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class AddNoteBottomSheetWidget extends StatelessWidget {
  const AddNoteBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomTextfield(
            hintText: 'Title',
            verticalSize: 16,
          ),
          CustomTextfield(
            hintText: 'Content',
            verticalSize: 64,
          ),
        ],
      ),
    );
  }
}
