import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_note_app/models/note_models.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) {}
}
