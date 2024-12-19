import 'package:flutter/material.dart';
import 'package:note_app/domain/models/note_model.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/domain/use_case/get_notes_use_case.dart';
import 'package:note_app/domain/use_case/use_cases.dart';
import 'package:note_app/views/notes/notes_event.dart';
import 'package:note_app/views/notes/notes_state.dart';

class NotesViewModel with ChangeNotifier {
  final NoteRepository repository;
  // useCase 사용을 위해 받아오기
  final UseCases useCases;

  Note? _recentlyDeletedNote;

  // 상태를 한번에 관리하기 위해 사용 (notes_state.dart에서 freezed를 사용하여 생성한 NoteState 클래스를 사용)
  NoteState _state = const NoteState();
  NoteState get state => _state;

  // 아래 코드는 삭제 (위에 state로 한번에 관리하니까)
  // List<Note> _notes = [];
  // UnmodifiableListView<Note> get notes => UnmodifiableListView(_notes);

  NotesViewModel(
    this.repository, {
    required this.useCases,
  }) {
    // 초기화 할 때 데이터를 읽어오는 함수를 호출
    _loadNotes();
  }

  void onEvent(NotesEvent event) {
    //freezed를 사용하여 만들어진 이벤트는 when 함수를 제공
    event.when(
      loadNotes: (query) => _loadNotes(query: query),
      deleteNote: _deleteNote,
      restoreNote: _restoreNote,
      changeOrder: _changeOrder,
      changeDirection: _changeDirection,
    );
  }

  Future<void> _loadNotes({String? query}) async {
    // List<Note> notes = await repository.getNotes();
    // 기존 레파지토리가 아닌 useCase를 사용하여 데이터를 읽어옴
    // 다른 것도 다 해줘야 하는데 우선 대표로 getNotes만 useCase를 사용해보기
    // useCase는 딱히 다른걸 하는게 아니라 깔끔하게 뷰모델은 데이터만 가져오고 로직 정리용은 useCase에서 해주는 것이 좋음
    List<Note> notes = await useCases.getNotes.call(
      _state.noteOrder,
      _state.orderDirection,
      query: query,
    );
    _state = _state.copyWith(notes: notes);
    // 검색어 저장
    _state = _state.copyWith(searchQuery: query);
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

// 정렬 기준 중 order값 변경
  void _changeOrder(NoteOrder noteOrder, String? query) {
    _state = _state.copyWith(noteOrder: noteOrder);
    _loadNotes(query: query);
  }

// 정렬 기준 중 direction 변경
  void _changeDirection(OrderDirection orderDirection, String? query) {
    _state = _state.copyWith(orderDirection: orderDirection);
    _loadNotes(query: query);
  }
}
