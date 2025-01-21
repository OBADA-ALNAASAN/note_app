import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'note_cubit_state.dart';

class NoteCubitCubit extends Cubit<NoteCubitState> {
  NoteCubitCubit() : super(NotesCubitsInitial());
}
