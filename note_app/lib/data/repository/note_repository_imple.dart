import 'package:note_app/data/data_source/note_db.dart';
import 'package:note_app/domain/models/note_model.dart';
import 'package:note_app/domain/repository/note_repository.dart';

// class NoteRepositoryImple implements NoteRepository {}
// 이렇게 만들고 NoteRepositoryImple에서 ctrl + . 하면 자동으로 미구현된 메서드 생성

class NoteRepositoryImple implements NoteRepository {
  final NoteDb noteDb;

  NoteRepositoryImple(this.noteDb);

  @override
  Future<List<Note>> getNotes() async {
    return await noteDb.getNotes();
  }

  @override
  Future<Note> getNoteDetail(int id) async {
    return await noteDb.getNoteDetail(id);
  }

  @override
  Future<void> createNote(Note note) async {
    await noteDb.createNote(note);
  }

  @override
  Future<void> deleteNote(int id) async {
    await noteDb.deleteNote(id);
  }

  @override
  Future<void> updateNote(Note note) async {
    await noteDb.updateNote(note);
  }
}
