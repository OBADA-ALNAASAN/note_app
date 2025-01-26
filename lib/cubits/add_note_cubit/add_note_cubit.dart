import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xffAC3931);
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      note.color = color.value;
      var notBox = Hive.box<NoteModel>(kNoteBox);
      await notBox.add(note);
      emit(AddNoteSuccces());
    } catch (e) {
      emit(AddNoteFailure(errMessage: e.toString()));
    }
  }
}
