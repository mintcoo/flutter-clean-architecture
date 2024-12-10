import 'package:note_app/domain/models/note_model.dart';

abstract class NoteRepository {
  Future<List<Note>> getNotes();

  Future<Note> getNoteDetail(int id);

  Future<void> createNote(Note note);

  Future<void> updateNote(Note note);

  Future<void> deleteNote(Note note);
}
