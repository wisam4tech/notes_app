import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/notes_list_view_widget.dart';

class NotesViewBodyWidget extends StatelessWidget {
  const NotesViewBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAppBarWidget(),
          NotesListView(),
        ],
      ),
    );
  }
}
