import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.iconData,
    required this.title,
    this.onPressed,
  });
  final IconData iconData;
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 17),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 32,
            ),
          ),
          const Spacer(),
          CustomIcon(
            onPressed: onPressed,
            icon: iconData,
          ),
          // customSearchWidget(),
        ],
      ),
    );
  }
}
