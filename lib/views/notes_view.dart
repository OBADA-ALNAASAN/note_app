import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: const NoteViewBody(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          shape: const CircleBorder(), // Ensure it's circular
          onPressed: () {},
          child: const Icon(Icons.add)),
    ));
  }
}
