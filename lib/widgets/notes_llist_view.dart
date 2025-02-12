import 'package:flutter/material.dart';
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
  int colorIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 20,
          itemBuilder: (context, index) {
            if (colorIndex == 5) {
              colorIndex = 0;
            }
            return NoteItem(
              color: colors[colorIndex++],
              date: "July 25,2021",
              descrip: 'Test description text in note custom widget',
              title: "Flutter Notes App",
            );
          },
        ),
      ),
    );
  }
}
