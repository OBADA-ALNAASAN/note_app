import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_form_field.dart';
import 'package:note_app/widgets/edit_not_color_list.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, content;
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
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            hint: widget.note.title,
            onChange: (val) {
              title = val;
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hint: widget.note.content,
            onChange: (val) {
              content = val;
            },
            maxLines: 5,
          ),
          SizedBox(
            height: 30,
          ),
          EditNotColorList(note: widget.note,),
        
        ],
      ),
    );
  }
}
