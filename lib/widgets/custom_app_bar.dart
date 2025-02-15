import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.customIcon,
    required this.title,
  });
  final Widget customIcon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 17),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 32,
            ),
          ),
          Spacer(),
          CustomIcon(icon: customIcon),
          // customSearchWidget(),
        ],
      ),
    );
  }
}
