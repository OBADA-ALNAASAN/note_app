import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_note_ite.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const CustomNoteItem();
        },
      ),
    );
  }
}
