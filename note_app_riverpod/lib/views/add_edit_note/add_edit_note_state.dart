import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:note_app/domain/models/note_model.dart';

part 'add_edit_note_state.freezed.dart';

@freezed
class AddEditNoteState with _$AddEditNoteState {
  const factory AddEditNoteState({
    required Note note,
  }) = _AddEditNoteState;
}
