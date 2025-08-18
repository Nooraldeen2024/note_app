import 'package:flutter/material.dart';
import 'package:my_note_app/widgets/custom_text_field.dart';

class AddNoteBottumsheet extends StatelessWidget {
  const AddNoteBottumsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(height: 32),
          CustomTextField(hint: 'Title', maxLines: 2),
          SizedBox(height: 16),
          CustomTextField(hint: 'Content', maxLines: 10),
        ],
      ),
    );
  }
}
