import 'package:note_app/domain/models/note_model.dart';
import 'package:note_app/domain/repository/note_repository.dart';

// class NoteRepositoryImple implements NoteRepository {}
// 이렇게 만들고 NoteRepositoryImple에서 ctrl + . 하면 자동으로 미구현된 메서드 생성

class NoteRepositoryImple implements NoteRepository {
  @override
  Future<List<Note>> getNotes() {
    // TODO: implement getNotes
    throw UnimplementedError();
  }

  @override
  Future<Note> getNoteDetail(int id) {
    // TODO: implement getNoteDetail
    throw UnimplementedError();
  }

  @override
  Future<void> createNote(Note note) {
    // TODO: implement createNote
    throw UnimplementedError();
  }

  @override
  Future<void> deleteNote(int id) {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<void> updateNote(Note note) {
    // TODO: implement updateNote
    throw UnimplementedError();
  }
}
