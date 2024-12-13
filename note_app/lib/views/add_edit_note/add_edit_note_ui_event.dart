import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_edit_note_ui_event.freezed.dart';

// 뷰 모델에서 어떤 이벤트를 ui쪽에 알려줄 때 사용할 씰클래스
@freezed
abstract class AddEditNoteUiEvent with _$AddEditNoteUiEvent {
  const factory AddEditNoteUiEvent.saveNote() = SaveNote;
  const factory AddEditNoteUiEvent.showSnackBar(String message) = ShowSnackBar;
}
