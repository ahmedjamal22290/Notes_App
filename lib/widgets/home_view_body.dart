import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_llist_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          const CustomAppBar(
            iconData: Icons.search,
            title: "Notes",
          ),
          NotesListView(),
        ],
      ),
    );
  }
}
