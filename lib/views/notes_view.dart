import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: const NoteViewBody(),
          floatingActionButton: FloatingActionButton(
              backgroundColor: kPrimaryColor,
              shape: const CircleBorder(), // Ensure it's circular
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return const AddNoteBottomSheet();
                  },
                );
              },
              child: const Icon(Icons.add)),
        ));
  }
}
