import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app/domain/models/note_model.dart';

part 'notes_event.freezed.dart';

// freezed가 제공하는 봉인클래스인데 이건 좀 과한듯 그냥 ViewModel에서 처리하는게 좋을 듯?
@freezed
abstract class NotesEvent with _$NotesEvent {
  const factory NotesEvent.loadNotes() = LoadNotes;
  const factory NotesEvent.deleteNote(Note note) = DeleteNote;
  const factory NotesEvent.restoreNote() = RestoreNote;
}
