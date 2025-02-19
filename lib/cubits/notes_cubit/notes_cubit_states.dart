import 'package:notes_app/models/note_model.dart';

abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NoteSsuccess extends NotesState {
  final List<NoteModel> notes;

  NoteSsuccess({required this.notes});
}

class NotesFailure extends NotesState {
  final String errorMessage;

  NotesFailure({required this.errorMessage});
}
