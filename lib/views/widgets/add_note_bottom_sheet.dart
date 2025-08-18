import 'package:flutter/material.dart';
import 'package:my_note_app/views/widgets/custom_text_field.dart';

class AddNoteBottumsheet extends StatelessWidget {
  const AddNoteBottumsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [SizedBox(height: 32), CustomTextField()]),
    );
  }
}
