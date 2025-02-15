import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_search_widget.dart';
import 'package:notes_app/widgets/notes_llist_view.dart';

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
          const CustomAppBar(
            customIcon: Icon(
              Icons.search,
              size: 30,
            ),
            title: "Notes",
          ),
          NotesListView(),
        ],
      ),
    );
  }
}
