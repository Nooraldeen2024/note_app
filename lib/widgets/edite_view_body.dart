import 'package:flutter/material.dart';
import 'package:my_note_app/widgets/Custom_app_bar.dart';

class EditeNoteViewBody extends StatelessWidget {
  const EditeNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Edite Notes', icon: Icons.check),
        ],
      ),
    );
  }
}
