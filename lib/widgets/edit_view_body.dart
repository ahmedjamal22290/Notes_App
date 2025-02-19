import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_field.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            CustomAppBar(
                onPressed: () {
                  if (title != null && title!.isNotEmpty) {
                    widget.note.title = title!;
                  }
                  if (content != null && content!.isNotEmpty) {
                    widget.note.subtitle = content!;
                  }

                  widget.note.save();

                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                iconData: Icons.check,
                title: 'Edit Note'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomField(
                title: "Title",
                onChanged: (value) {
                  title = value;
                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomField(
                onChanged: (value) {
                  content = value;
                },
                title: "Content",
                maxLines: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
