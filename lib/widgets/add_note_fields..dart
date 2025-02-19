import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_picker_widget.dart';
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
  int color = Colors.yellow.value;
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
          const SizedBox(height: 20),
          pickColorMethod(),
          //
          SizedBox(height: MediaQuery.of(context).size.height / 7),
          BlocBuilder<AddNoteCubit, AddNoteStates>(
            builder: (context, state) {
              return CustomAddButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    String date =
                        "${months[DateTime.now().month]} ${DateTime.now().day},${DateTime.now().year}";
                    BlocProvider.of<AddNoteCubit>(context).addNote(
                      NoteModel(
                          title: title!,
                          subtitle: content!,
                          date: date,
                          color: color),
                    );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }

  Row pickColorMethod() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            color = Colors.green.value;
            setState(() {});
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(60),
            ),
            child: color == Colors.green.value
                ? const Icon(Icons.check)
                : const SizedBox(),
          ),
        ),
        GestureDetector(
          onTap: () {
            color = Colors.yellow.value;
            setState(() {});
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(60),
            ),
            child: color == Colors.yellow.value
                ? const Icon(Icons.check)
                : const SizedBox(),
          ),
        ),
        GestureDetector(
          onTap: () {
            color = Colors.orange.value;
            setState(() {});
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(60),
            ),
            child: color == Colors.orange.value
                ? const Icon(Icons.check)
                : const SizedBox(),
          ),
        ),
        GestureDetector(
          onTap: () {
            color = Colors.red.value;
            setState(() {});
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(60),
            ),
            child: color == Colors.red.value
                ? const Icon(Icons.check)
                : const SizedBox(),
          ),
        ),
        GestureDetector(
          onTap: () {
            color = Colors.purpleAccent.value;
            setState(() {});
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(60),
            ),
            child: color == Colors.purpleAccent.value
                ? const Icon(Icons.check)
                : const SizedBox(),
          ),
        ),
        GestureDetector(
          onTap: () {
            color = Colors.pink.value;
            setState(() {});
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(60),
            ),
            child: color == Colors.pink.value
                ? const Icon(Icons.check)
                : const SizedBox(),
          ),
        ),
        GestureDetector(
          onTap: () {
            color = Colors.white.value;
            setState(() {});
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(60),
            ),
            child: color == Colors.white.value
                ? const Icon(
                    Icons.check,
                    color: Colors.grey,
                  )
                : const SizedBox(),
          ),
        ),
      ],
    );
  }
}
