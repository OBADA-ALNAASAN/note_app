import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_form_field.dart';
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> formKey = GlobalKey();
String? title, subtitle;
class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 36,
          ),
          CustomTextFormField(
            onSaved: (val) {
              title = val;
            },
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            onSaved: (val) {
              subtitle = val;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          SizedBox(
            height: 50,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
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
