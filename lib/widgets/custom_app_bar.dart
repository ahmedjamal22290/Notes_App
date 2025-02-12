import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_widget.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 17),
      child: Row(
        children: [
          Text(
            'Notes',
            style: TextStyle(
              fontSize: 32,
            ),
          ),
          Spacer(),
          customSearchWidget(),
        ],
      ),
    );
  }
}
