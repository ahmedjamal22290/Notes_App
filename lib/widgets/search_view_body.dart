import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/search_bar_widget.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  late List<NoteModel>? notes;

  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50.0,
        left: 4,
        right: 4,
      ),
      child: Column(
        children: [
          CustomSearchBar(
            controller: _controller,
            onChanged: (value) {
              _controller.text = value;
              log(_controller.text);
              setState(() {});
            },
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: MediaQuery.of(context).size.height - 250,
            child: findNotes(_controller.text) == null
                ? const Text('There are no notes now.')
                : ListView(
                    children: findNotes(_controller.text)!,
                  ),
          )
        ],
      ),
    );
  }

  List<Widget>? findNotes(String text) {
    List<Widget> results = [];
    for (int i = 0; notes == null ? i < 0 : i < notes!.length; i++) {
      if (notes![i].title.contains(text) || notes![i].subtitle.contains(text)) {
        results.add(NoteItem(note: notes![i]));
      }
    }
    return results.isEmpty ? null : results;
  }
}
