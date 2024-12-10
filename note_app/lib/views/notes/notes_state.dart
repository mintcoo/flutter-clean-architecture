import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:note_app/domain/models/note_model.dart';

part 'notes_state.freezed.dart';
part 'notes_state.g.dart';

@freezed
class NoteState with _$NoteState {
  const factory NoteState({
    // @default와 required를 같이 사용하면 오류가 발생
    @Default([]) List<Note> notes,
    // required List<Note> notes,
  }) = _NoteState;

  factory NoteState.fromJson(Map<String, dynamic> json) =>
      _$NoteStateFromJson(json);
}
