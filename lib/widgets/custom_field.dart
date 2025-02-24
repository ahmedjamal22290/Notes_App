import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField(
      {super.key,
      this.onSaved,
      this.maxLines = 1,
      required this.title,
      this.onChanged,
      this.hint});
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final int? maxLines;
  final String title;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
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
        hintText: hint,
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
