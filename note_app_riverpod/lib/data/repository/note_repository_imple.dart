import 'package:note_app/data/data_source/note_db.dart';
import 'package:note_app/domain/models/note_model.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'note_repository_imple.g.dart';

// class NoteRepositoryImple implements NoteRepository {}
// 이렇게 만들고 NoteRepositoryImple에서 ctrl + . 하면 자동으로 미구현된 메서드 생성

// riverpod 함수형 사용
@riverpod
Future<NoteRepository> noteRepository(NoteRepositoryRef ref) async {
  Database database = await openDatabase(
    "notes_db",
    version: 1,
    onCreate: (db, version) {
      db.execute('''
          CREATE TABLE note (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            content TEXT,
            color INTEGER,
            createdAt INTEGER
          )
      ''');
    },
  );

  NoteDb noteDb = NoteDb(database);
  return NoteRepositoryImple(noteDb);
}

class NoteRepositoryImple implements NoteRepository {
  final NoteDb db;

  NoteRepositoryImple(this.db);

  @override
  Future<List<Note>> getNotes({String? query}) async {
    return await db.getNotes(query: query);
  }

  @override
  Future<Note> getNoteDetail(int id) async {
    return await db.getNoteDetail(id);
  }

  @override
  Future<void> createNote(Note note) async {
    await db.createNote(note);
  }

  @override
  Future<void> deleteNote(Note note) async {
    await db.deleteNote(note);
  }

  @override
  Future<void> updateNote(Note note) async {
    await db.updateNote(note);
  }
}
