import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/note_item.dart';

class homeViewBody extends StatelessWidget {
  const homeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          customAppBar(),
          NotesListView(),
        ],
      ),
    );
  }
}

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return NoteItem(
            date: "July 25,2021",
            descrip: 'Test description text in note custom widget',
            title: "Flutter Notes App",
          );
        },
      ),
    );
  }
}
