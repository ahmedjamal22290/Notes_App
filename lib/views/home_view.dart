import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottomSheet.dart';
import 'package:notes_app/widgets/custom_floating_button.dart';
import 'package:notes_app/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = "HomePage";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: CustomFloatingButton(),
      body: HomeViewBody(),
    );
  }
}
