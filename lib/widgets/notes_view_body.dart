import 'package:flutter/material.dart';
import 'package:my_note_app/widgets/custom_app_bar.dart';
import 'package:my_note_app/widgets/nots_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Notes', icon: Icons.search),

          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
