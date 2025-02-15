import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});
  static String id = 'editView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              CustomAppBar(
                  customIcon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white.withOpacity(0.13),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        size: 28,
                        color: Colors.white,
                        Icons.check,
                      ),
                    ),
                  ),
                  title: 'Edit Note'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: Colors.deepPurpleAccent),
                    labelText: "Title",
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
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: Colors.deepPurpleAccent),
                    labelText: "Content",
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
