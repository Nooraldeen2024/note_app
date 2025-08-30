import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_note_app/cubits/add_note/add_note_cubit.dart';
import 'package:my_note_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:my_note_app/widgets/add_note_form.dart';

class AddNoteBottumsheet extends StatelessWidget {
  const AddNoteBottumsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('loading failer${state.errMessage}');
          }
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                right: 16,
                left: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
