import 'package:flutter/material.dart';
import 'package:notes_app/widgets/search_bar_widget.dart';
import 'package:notes_app/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  static String id = "searchView";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchViewBody(),
    );
  }
}
