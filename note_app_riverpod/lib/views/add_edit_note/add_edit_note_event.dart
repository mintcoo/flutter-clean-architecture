import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app/domain/models/note_model.dart';

part 'add_edit_note_event.freezed.dart';

// freezed가 제공하는 봉인클래스인데 이건 좀 과한듯 그냥 ViewModel에서 처리하는게?
@freezed
abstract class AddEditNoteEvent with _$AddEditNoteEvent {
  const factory AddEditNoteEvent.changeColor(int color) = changeBgColor;
  const factory AddEditNoteEvent.saveNote(
    int? id,
    String title,
    String content,
  ) = saveNote;
}
