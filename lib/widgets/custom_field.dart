import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    this.onSaved,
    this.maxLines = 1,
    required this.title,
  });
  final void Function(String?)? onSaved;
  final int? maxLines;
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      maxLines: maxLines,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is requierd";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        labelStyle: const TextStyle(color: Colors.deepPurpleAccent),
        labelText: title,
        border: const OutlineInputBorder(
          borderSide: BorderSide(),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.pink,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
