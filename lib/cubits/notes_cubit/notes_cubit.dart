import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes() async {
    
    try {
      var notBox = Hive.box<NoteModel>(kNoteBox);
      
      emit(NotesSuccess( notBox.values.toList()));
    } catch (e) {
      emit(NotesFailure(errMessage: e.toString()));
    }
  }
}
