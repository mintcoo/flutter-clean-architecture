import 'package:note_app/domain/models/note_model.dart';
import 'package:note_app/domain/repository/note_repository.dart';

class GetNoteDetail {
  final NoteRepository repository;

  GetNoteDetail(this.repository);

  Future<Note?> call(int id) async {
    return await repository.getNoteDetail(id);
  }
}
