import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/widgets/add_note_fields..dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteStates>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            log("there is an error ${state.errorMessage}");
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return const Padding(
            padding:
                EdgeInsets.only(top: 40.0, right: 20, left: 20, bottom: 40),
            child: SingleChildScrollView(
              child: AddNoteFIelds(),
            ),
          );
        },
      ),
    );
  }
}
