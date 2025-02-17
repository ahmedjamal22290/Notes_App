import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            CustomAppBar(iconData: Icons.check, title: 'Edit Note'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomField(title: "Title"),
            ),
            SizedBox(height: 20),
            Padding(
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
