import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:note_app/data/repository/note_repository_imple.dart';
import 'package:note_app/domain/models/note_model.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/domain/use_case/get_notes_use_case.dart';
import 'package:note_app/domain/use_case/use_cases.dart';
import 'package:note_app/views/notes/notes_event.dart';
import 'package:note_app/views/notes/notes_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// class NotesViewModel with ChangeNotifier {
//   final NoteRepository repository;
//   // useCase 사용을 위해 받아오기
//   final UseCases useCases;

//   Note? _recentlyDeletedNote;

//   // 상태를 한번에 관리하기 위해 사용 (notesstate.dart에서 freezed를 사용하여 생성한 NoteState 클래스를 사용)
//   NoteState state = const NoteState();
//   NoteState get state => state;

//   // 아래 코드는 삭제 (위에 state로 한번에 관리하니까)
//   // List<Note> _notes = [];
//   // UnmodifiableListView<Note> get notes => UnmodifiableListView(_notes);

//   // 검색, 필터, 검색어 존재여부 !! showSearchField는 전체 state로 관리해보았다. 스타일에 따라 하면 될듯
//   // bool _showSearchField = false;
//   bool _showOrderDialog = false;
//   bool _existSearchQuery = false;

//   // bool get showSearchField => _showSearchField;
//   bool get showOrderDialog => _showOrderDialog;
//   bool get existSearchQuery => _existSearchQuery;

//   NotesViewModel(
//     this.repository, {
//     required this.useCases,
//   }) {
//     // 초기화 할 때 데이터를 읽어오는 함수를 호출
//     _loadNotes();
//   }

//   void onEvent(NotesEvent event) {
//     //freezed를 사용하여 만들어진 이벤트는 when 함수를 제공
//     event.when(
//       loadNotes: (query) => _loadNotes(query: query),
//       deleteNote: _deleteNote,
//       restoreNote: _restoreNote,
//       changeOrder: _changeOrder,
//       changeDirection: _changeDirection,
//       toggleSearchField: _toggleSearchField,
//     );
//   }

//   Future<void> _loadNotes({String? query}) async {
//     // List<Note> notes = await repository.getNotes();
//     // 기존 레파지토리가 아닌 useCase를 사용하여 데이터를 읽어옴
//     // 다른 것도 다 해줘야 하는데 우선 대표로 getNotes만 useCase를 사용해보기
//     // useCase는 딱히 다른걸 하는게 아니라 깔끔하게 뷰모델은 데이터만 가져오고 로직 정리용은 useCase에서 해주는 것이 좋음
//     List<Note> notes = await useCases.getNotes.call(
//       state.noteOrder,
//       state.orderDirection,
//       query: query,
//     );
//     state = state.copyWith(notes: notes);
//     // 검색어 저장
//     state = state.copyWith(searchQuery: query);
//
//   }

//   Future<void> _deleteNote(Note note) async {
//     await repository.deleteNote(note);
//     _recentlyDeletedNote = note;
//     // 삭제하고 데이터를 다시 읽어줌 (다시 읽어주면서 notifyListeners() 호출)
//     await _loadNotes();
//   }

//   Future<void> _restoreNote() async {
//     if (_recentlyDeletedNote != null) {
//       await repository.createNote(_recentlyDeletedNote!);
//       _recentlyDeletedNote = null;

//       await _loadNotes();
//     }
//   }

// // 정렬 기준 중 order값 변경
//   void _changeOrder(NoteOrder noteOrder, String? query) {
//     state = state.copyWith(noteOrder: noteOrder);
//     _loadNotes(query: query);
//   }

// // 정렬 기준 중 direction 변경
//   void _changeDirection(OrderDirection orderDirection, String? query) {
//     state = state.copyWith(orderDirection: orderDirection);
//     _loadNotes(query: query);
//   }

//   // 검색 필드 토글
//   void _toggleSearchField() {
//     state = state.copyWith(showSearchField: !state.showSearchField);
//   }

//   void toggleOrderDialog() {
//     _showOrderDialog = !_showOrderDialog;
//   }

//   void setExistSearchQuery(bool value) {
//     _existSearchQuery = value;
//   }
// }

part 'notes_view_model.g.dart';

@riverpod
class NoteViewModel extends _$NoteViewModel {
  late final NoteRepository _repository;
  late final UseCases _useCases;

  Note? _recentlyDeletedNote;

  bool _showOrderDialog = false;
  bool _existSearchQuery = false;

  bool get showOrderDialog => _showOrderDialog;
  bool get existSearchQuery => _existSearchQuery;

  @override
  Future<NoteState> build() async {
    // repository와 useCases를 provider를 통해 주입
    _repository = await ref.watch(noteRepositoryProvider.future);
    _useCases = ref.watch(useCasesProvider(repository: _repository));

    // 임시 초기 상태 설정
    state = const AsyncValue.data(NoteState());

    // 초기화 할 때 데이터를 읽어오는 함수를 호출
    // _loadNotes를 통해 데이터 로드
    await _loadNotes();

    // state.value가 null이 아님이 보장됨
    return state.value!;
  }

  void onEvent(NotesEvent event) {
    //freezed를 사용하여 만들어진 이벤트는 when 함수를 제공
    event.when(
      loadNotes: (query) => _loadNotes(query: query),
      deleteNote: _deleteNote,
      restoreNote: _restoreNote,
      changeOrder: _changeOrder,
      changeDirection: _changeDirection,
      toggleSearchField: _toggleSearchField,
    );
  }

  Future<void> _loadNotes({String? query}) async {
    // List<Note> notes = await repository.getNotes();
    // 기존 레파지토리가 아닌 useCase를 사용하여 데이터를 읽어옴
    // 다른 것도 다 해줘야 하는데 우선 대표로 getNotes만 useCase를 사용해보기
    // useCase는 딱히 다른걸 하는게 아니라 깔끔하게 뷰모델은 데이터만 가져오고 로직 정리용은 useCase에서 해주는 것이 좋음
    List<Note> notes = await _useCases.getNotes.call(
      state.value!.noteOrder,
      state.value!.orderDirection,
      query: query,
    );
    log('notes: $notes');
    state = AsyncValue.data(state.value!.copyWith(notes: notes));
    // 검색어 저장
    state = AsyncValue.data(state.value!.copyWith(searchQuery: query));
  }

  Future<void> _deleteNote(Note note) async {
    await _repository.deleteNote(note);
    _recentlyDeletedNote = note;
    // 삭제하고 데이터를 다시 읽어줌 (다시 읽어주면서 notifyListeners() 호출)
    await _loadNotes();
  }

  Future<void> _restoreNote() async {
    if (_recentlyDeletedNote != null) {
      await _repository.createNote(_recentlyDeletedNote!);
      _recentlyDeletedNote = null;

      await _loadNotes();
    }
  }

// 정렬 기준 중 order값 변경
  void _changeOrder(NoteOrder noteOrder, String? query) {
    state = AsyncValue.data(state.value!.copyWith(noteOrder: noteOrder));
    _loadNotes(query: query);
  }

// 정렬 기준 중 direction 변경
  void _changeDirection(OrderDirection orderDirection, String? query) {
    state =
        AsyncValue.data(state.value!.copyWith(orderDirection: orderDirection));
    _loadNotes(query: query);
  }

  // 검색 필드 토글
  void _toggleSearchField() {
    state = AsyncValue.data(
        state.value!.copyWith(showSearchField: !state.value!.showSearchField));
  }

  void toggleOrderDialog() {
    _showOrderDialog = !_showOrderDialog;
  }

  void setExistSearchQuery(bool value) {
    _existSearchQuery = value;
  }
}
