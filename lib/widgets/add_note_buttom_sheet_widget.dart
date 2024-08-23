import 'package:flutter/material.dart';
import 'package:notes_app/helper/constants.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class AddNoteBottomSheetWidget extends StatelessWidget {
  AddNoteBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextfield(
              hintText: 'Title',
            ),
            CustomTextfield(
              hintText: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
              text: 'Add',
              buttonColor: kPrimaryColor,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
