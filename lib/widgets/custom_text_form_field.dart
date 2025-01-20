import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'this filed is required';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: kPrimaryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
