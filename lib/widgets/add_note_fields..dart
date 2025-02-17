import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_add_button.dart';
import 'package:notes_app/widgets/custom_field.dart';

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
          SizedBox(height: MediaQuery.of(context).size.height / 7),
          CustomAddButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          )
        ],
      ),
    );
  }
}
