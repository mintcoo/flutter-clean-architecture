import 'package:flutter/material.dart';
import 'package:note_app/domain/models/note_model.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/views/notes/notes_event.dart';
import 'package:note_app/views/notes/notes_state.dart';

class NotesViewModel with ChangeNotifier {
  final NoteRepository repository;

  Note? _recentlyDeletedNote;

  // 상태를 한번에 관리하기 위해 사용 (notes_state.dart에서 freezed를 사용하여 생성한 NoteState 클래스를 사용)
  NoteState _state = const NoteState();
  NoteState get state => _state;

  // 아래 코드는 삭제 (위에 state로 한번에 관리하니까)
  // List<Note> _notes = [];
  // UnmodifiableListView<Note> get notes => UnmodifiableListView(_notes);

  NotesViewModel(this.repository);

  void onEvent(NotesEvent event) {
    //freezed를 사용하여 만들어진 이벤트는 when 함수를 제공
    event.when(
      loadNotes: _loadNotes,
      deleteNote: _deleteNote,
      restoreNote: _restoreNote,
    );
  }

  Future<void> _loadNotes() async {
    List<Note> notes = await repository.getNotes();
    _state = _state.copyWith(notes: notes);
    notifyListeners();
  }

  Future<void> _deleteNote(Note note) async {
    await repository.deleteNote(note);
    _recentlyDeletedNote = note;
    // 삭제하고 데이터를 다시 읽어줌 (다시 읽어주면서 notifyListeners() 호출)
    await _loadNotes();
  }

  Future<void> _restoreNote() async {
    if (_recentlyDeletedNote != null) {
      await repository.createNote(_recentlyDeletedNote!);
      _recentlyDeletedNote = null;

      await _loadNotes();
    }
  }
}
