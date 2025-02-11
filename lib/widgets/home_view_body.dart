import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_widget.dart';

class homeViewBody extends StatelessWidget {
  const homeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 11),
        child: Row(
          children: [
            const Text(
              'Notes',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            Spacer(),
            Container(
              height: 45,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.15),
              ),
              child: const Icon(
                Icons.search,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      NoteWidget(
        date: "July 25,2021",
        descrip: 'Test description text in note custom widget',
        title: "Flutter Notes App",
      ),
      NoteWidget(
        date: "July 25,2021",
        descrip: 'Test description text in note custom widget',
        title: "Flutter Notes App",
      ),
      NoteWidget(
        date: "July 25,2021",
        descrip: 'Test description text in note custom widget',
        title: "Flutter Notes App",
      ),
    ]);
  }
}

// AppBar(
//         elevation: 0,
//         actions: [
//           Container(
//             height: 45,
//             margin: const EdgeInsets.only(right: 15),
//             width: 40,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               color: Colors.white.withOpacity(0.15),
//             ),
//             child: const Icon(
//               Icons.search,
//               size: 30,
//             ),
//           ),
//         ],
//         title: const Text(
//           'Notes',
//           style: TextStyle(
//             fontSize: 32,
//           ),
//         ),
//       ),
