import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_note_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:my_note_app/models/note_models.dart';
import 'package:my_note_app/widgets/custom_app_bar.dart';
import 'package:my_note_app/widgets/custom_text_field.dart';

class EditeNoteViewBody extends StatefulWidget {
  const EditeNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditeNoteViewBody> createState() => _EditeNoteViewBodyState();
}

class _EditeNoteViewBodyState extends State<EditeNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 50),
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              title: 'Edite Notes',
              icon: Icons.check,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              onchange: (value) {
                title = value;
              },
              hint: widget.note.title,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              onchange: (value) {
                content = value;
              },
              hint: widget.note.subTitle,
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
