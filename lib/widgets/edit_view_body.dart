import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            const CustomAppBar(iconData: Icons.check, title: 'Edit Note'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomField(title: "Title"),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomField(
                title: "Content",
                maxLines: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
