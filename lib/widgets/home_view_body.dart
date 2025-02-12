import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_widget.dart';
import 'package:notes_app/widgets/note_widget.dart';

class homeViewBody extends StatelessWidget {
  const homeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 17),
        child: Row(
          children: [
            Text(
              'Notes',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            Spacer(),
            customSearchWidget(),
          ],
        ),
      ),
      NoteItem(
        date: "July 25,2021",
        descrip: 'Test description text in note custom widget',
        title: "Flutter Notes App",
      ),
      NoteItem(
        date: "July 25,2021",
        descrip: 'Test description text in note custom widget',
        title: "Flutter Notes App",
      ),
      NoteItem(
        date: "July 25,2021",
        descrip: 'Test description text in note custom widget',
        title: "Flutter Notes App",
      ),
    ]);
  }
}
