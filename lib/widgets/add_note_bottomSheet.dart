import 'package:flutter/material.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 40.0, right: 20, left: 20, bottom: 40),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
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
          const SizedBox(height: 20),
          SizedBox(
            height: 150,
            child: TextField(
              maxLines: null,
              minLines: null,
              expands: true,
              decoration: InputDecoration(
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
          Spacer(),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purple,
            ),
            child: GestureDetector(
              onTap: () {},
              child: const Center(
                child: Text(
                  'Add',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
