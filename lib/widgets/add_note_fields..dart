import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/models/note_model.dart';
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
                          color: Colors.pink.value),
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
}
