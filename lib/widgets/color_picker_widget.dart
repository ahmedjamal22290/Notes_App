import 'package:flutter/material.dart';

class ColorPickerWidget extends StatelessWidget {
  const ColorPickerWidget({
    super.key,
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(60),
      ),
      child: const SizedBox(),
    );
  }
}
