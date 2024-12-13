import 'dart:async';

import 'package:flutter/material.dart';
import 'package:note_app/domain/models/note_model.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/views/add_edit_note/add_edit_note_event.dart';
import 'package:note_app/views/add_edit_note/add_edit_note_state.dart';
import 'package:note_app/views/add_edit_note/add_edit_note_ui_event.dart';

class AddEditNoteViewModel with ChangeNotifier {
  final NoteRepository repository;

  final AddEditNoteState _state = const AddEditNoteState(
      note: Note(title: '', content: '', color: 0, createdAt: 0));
  AddEditNoteState get state => _state;

  // int를 사용하는 이유는 model만들때 Color 타입은 json으로 변환이 안되어서 int로 설정
  int _bgColor = Colors.white.value;
  int get bgColor => _bgColor;

  // 스트림 컨트롤러 이벤트 실시간 변경 감지 (타입이 UiEvent이다)
  // broadcast 타입은 리슨을 여러번 할 수 있음
  final _eventController = StreamController<AddEditNoteUiEvent>.broadcast();
  Stream<AddEditNoteUiEvent> get eventStream => _eventController.stream;

  // 생성자
  AddEditNoteViewModel(this.repository);

  @override
  void dispose() {
    _eventController.close();
    super.dispose();
  }

  // 이벤트 처리
  void onEvent(AddEditNoteEvent event) {
    event.when(
      changeColor: _changeColor,
      saveNote: _saveNote,
    );
  }

  // 배경색 변경
  Future<void> _changeColor(int color) async {
    _bgColor = color;
    notifyListeners();
  }

  Future<void> _saveNote(
    int? id,
    String title,
    String content,
  ) async {
    if (title.isEmpty || content.isEmpty) {
      _eventController
          .add(const AddEditNoteUiEvent.showSnackBar('제목과 내용을 입력해주세요.'));
      return;
    }

    if (id == null) {
      // + 버튼을 누르고 들어와서 id를 모를 땐 새로 추가의 개념
      await repository.createNote(
        Note(
          title: title,
          content: content,
          color: _bgColor,
          createdAt: DateTime.now().millisecondsSinceEpoch,
        ),
      );
    } else {
      // id가 null이 아니면 업데이트의 개념
      await repository.updateNote(
        Note(
          id: id,
          title: title,
          content: content,
          color: _bgColor,
          createdAt: DateTime.now().millisecondsSinceEpoch,
        ),
      );
    }
    _eventController.add(const AddEditNoteUiEvent.saveNote());
  }
}
