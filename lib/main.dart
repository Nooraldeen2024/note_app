import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_note_app/constans.dart';
import 'package:my_note_app/cubits/notes_cubit/notes_cubit_cubit.dart';

import 'package:my_note_app/models/note_models.dart';
import 'package:my_note_app/simple_bloc_observer.dart';
import 'package:my_note_app/views/notes_view.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(NoteModelsAdapter());

  await Hive.openBox<NoteModel>(kNoteBox);

  Bloc.observer = SimpleBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubitCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: const NotesView(),
      ),
    );
  }
}
