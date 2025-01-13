import 'package:flutter/material.dart';
import 'package:note_app/widgets/Custom_text_field.dart';
import 'package:note_app/widgets/custom_button.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(
          hint: 'Title',
        ),
        SizedBox(
          height: 16,
        ),
        CustomTextField(
          hint: 'Content',
          maxLines: 5,
        ),
        SizedBox(
          height: 50,
        ),
        CustomButton(),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
