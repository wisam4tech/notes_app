import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/widgets/notes_list_view_widget.dart';

class NotesViewBodyWidget extends StatefulWidget {
  const NotesViewBodyWidget({super.key});

  @override
  State<NotesViewBodyWidget> createState() => _NotesViewBodyWidgetState();
}

class _NotesViewBodyWidgetState extends State<NotesViewBodyWidget> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

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
            text: 'Notes',
            icon: Icons.search,
          ),
          NotesListView(),
        ],
      ),
    );
  }
}
