import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:my_note_app/constans.dart';
import 'package:my_note_app/models/note_models.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  ferchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesCubitSuccess(notes));
    } catch (e) {
      emit(NotesCubitFailure(e.toString()));
    }
  }
}
