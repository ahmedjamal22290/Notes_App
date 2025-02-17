import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_fields..dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40.0, right: 20, left: 20, bottom: 40),
      child: SingleChildScrollView(
        child: AddNoteFIelds(),
      ),
    );
  }
}
