import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  // final TextEditingController controller;

  const CustomSearchBar({super.key, required this.onChanged});
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: TextFormField(
          // controller: controller,
          onChanged: onChanged,
          decoration: InputDecoration(
            suffixIcon: const Icon(Icons.search_outlined, size: 21),
            suffixIconColor: Colors.pink,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: Colors.pink),
              borderRadius: BorderRadius.circular(25),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(width: 2.2),
              borderRadius: BorderRadius.circular(9),
            ),
          ),
        ),
      ),
    );
  }
}
