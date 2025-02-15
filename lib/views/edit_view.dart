import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});
  static String id = 'editView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditViewBody(),
    );
  }
}
