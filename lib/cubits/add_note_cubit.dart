import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:my_note_app/constans.dart';
import 'package:my_note_app/models/note_models.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());

    try {
      var noteBox = Hive.box(kNoteBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
