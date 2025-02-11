import 'package:flutter/material.dart';

class customSearchWidget extends StatelessWidget {
  const customSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withOpacity(0.1),
      ),
      child: const Icon(
        Icons.search,
        size: 30,
      ),
    );
  }
}
