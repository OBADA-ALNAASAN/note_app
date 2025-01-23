part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSuccess extends NotesState {
  final List<NoteModel> listModel;

  NotesSuccess(this.listModel);
}

final class NotesFalure extends NotesState {
  final String errMessage;

  NotesFalure({required this.errMessage});
}
