import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:note_app/domain/models/note_model.dart';
import 'package:note_app/domain/use_case/get_notes_use_case.dart';

part 'notes_state.freezed.dart';

// 결국 이렇게 상태관리 하는 이유는 뷰모델 내부에서 외부에 공개하는 데이터들은 다 읽기 전용, 불변객체로 만들자
@freezed
class NoteState with _$NoteState {
  const factory NoteState({
    // @default와 required를 같이 사용하면 오류가 발생
    @Default([]) List<Note> notes,
    @Default(null) String? searchQuery,
    @Default(NoteOrder.date) NoteOrder noteOrder,
    @Default(OrderDirection.descending) OrderDirection orderDirection,
    // required List<Note> notes,
  }) = _NoteState;
}
