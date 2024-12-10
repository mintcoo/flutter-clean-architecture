// sqflite 라이브러리를 사용해서 데이터베이스 연동
import 'package:note_app/domain/models/note_model.dart';
import 'package:sqflite/sqflite.dart';

class NoteDb {
  Database db;

  NoteDb(this.db);

  Future<Note> getNoteDetail(int id) async {
    // SELECT * FROM note WHERE id = 1
    final List<Map<String, dynamic>> maps = await db.query(
      "note",
      where: "id = ?",
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      // 무조건 하나만 들어있을 거라 생각하고 first 사용
      return Note.fromJson(maps.first);
    } else {
      throw Exception("Note not found");
    }
  }

  Future<List<Note>> getNotes() async {
    // 조건 없이 쓰면 note 테이블에 있는 모든 데이터 가져옴
    final maps = await db.query("note");
    return maps.map((e) => Note.fromJson(e)).toList();
  }

  Future<void> createNote(Note note) async {
    // 들어갈 땐 toJson 형태로 들어가야함
    await db.insert(
      "note",
      note.toJson(),
    );
  }

  Future<void> updateNote(Note note) async {
    await db.update(
      "note",
      note.toJson(),
      where: "id = ?",
      whereArgs: [note.id],
    );
  }

  Future<void> deleteNote(Note note) async {
    await db.delete(
      "note",
      where: "id = ?",
      whereArgs: [note.id],
    );
  }
}
