import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:my_note_app/constans.dart';
import 'package:my_note_app/models/note_models.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());

  List<NoteModel>? notes;

  ferchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(kNoteBox);
    notes = notesBox.values.toList();
  }
}
