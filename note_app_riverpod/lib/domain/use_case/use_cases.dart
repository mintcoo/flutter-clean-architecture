import 'package:note_app/domain/use_case/add_note_use_case.dart';
import 'package:note_app/domain/use_case/get_notes_use_case.dart';

// 대표로 두개만 사용, useCase들을 한번에 관리하기 위해 사용
class UseCases {
  // 노트 가져오기
  final GetNotesUseCase getNotes;
  // 노트 추가하기
  final AddNoteUseCase addNote;

  UseCases({
    required this.getNotes,
    required this.addNote,
  });
}
