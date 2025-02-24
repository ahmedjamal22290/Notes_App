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
  String? searchValue;

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
            onChanged: (value) {
              searchValue = value;
              setState(() {});
            },
          ),
          const SizedBox(height: 15),
          Container(
            height: MediaQuery.of(context).size.height - 130,
            child: ListView.builder(
              itemCount: notes?.length,
              itemBuilder: (context, index) {
                if (notes == null || notes!.isEmpty) {
                  return const Text('There are no notes now.');
                }
                return NoteItem(note: notes![index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
