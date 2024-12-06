import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'note_model.freezed.dart';
part 'note_model.g.dart';

@freezed
class Note with _$Note {
  const factory Note({
    required String title,
    required String content,
    required int color,
    required int createdAt,
    int? id,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}

// 필요한 것들을 생성해주고 freezed를 사용해서 모델 코드 작성
// class Note {
//   String title;
//   String content;
//   int color;
//   int createdAt;
//   int? id;
// }