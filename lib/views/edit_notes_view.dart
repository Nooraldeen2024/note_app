import 'package:flutter/material.dart';
import 'package:my_note_app/widgets/edite_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: EditeNoteViewBody());
  }
}
