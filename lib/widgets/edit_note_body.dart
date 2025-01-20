import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_form_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24, left: 24, top: 10),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          CustomTextFormField(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hint: 'Content',
            maxLines: 5,
          ),
          SizedBox(
            height: 50,
          ),
          CustomButton(
            onTap: () {
             
            },
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
