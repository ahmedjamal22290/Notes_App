import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  NotesListView({
    super.key,
  });
  final List<Color> colors = [
    Colors.orange.shade300,
    Colors.purple.shade300,
    Colors.pink.shade300,
    Colors.red.shade300,
    Colors.yellow.shade300,
    Colors.green.shade300,
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return NoteItem(
                  note: notes[index],
                );
                // return NoteItem(
                //   color: colors[index],
                //   date: "July 25,2021",
                //   descrip: 'Test description text in note custom widget',
                //   title: "Flutter Notes App",
                // );
              },
            ),
          ),
        );
      },
    );
  }
}
