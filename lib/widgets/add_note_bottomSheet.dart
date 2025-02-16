import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40.0, right: 20, left: 20, bottom: 40),
      child: SingleChildScrollView(
        child: AddNoteFIelds(),
      ),
    );
  }
}

class AddNoteFIelds extends StatefulWidget {
  const AddNoteFIelds({
    super.key,
  });

  @override
  State<AddNoteFIelds> createState() => _AddNoteFIeldsState();
}

class _AddNoteFIeldsState extends State<AddNoteFIelds> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomField(
            title: "Title",
            onSaved: (newValue) {
              title = newValue;
            },
          ),
          const SizedBox(height: 20),
          CustomField(
            title: 'Content',
            onSaved: (newValue) {
              content = newValue;
            },
            maxLines: 5,
          ),
          //
          SizedBox(height: MediaQuery.of(context).size.height / 6),
          Container(
            height: 45,
            width: MediaQuery.of(context).size.width, //all width of screen
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.deepPurpleAccent,
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
