import 'package:flutter/material.dart';
import 'package:my_note_app/models/note_models.dart';
import 'package:my_note_app/widgets/edite_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditeNoteViewBody(note: note));
  }
}
