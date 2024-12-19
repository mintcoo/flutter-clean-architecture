import 'package:note_app/domain/models/note_model.dart';
import 'package:note_app/domain/repository/note_repository.dart';

// 뷰 모델에서 로직을 처리하지 말고 여기서 로직을 처리
// 뷰 모델은 그저 데이터를 받아서 전달해주는 역할만 함
// 심플한 앱은 useCase를 사용하지 않아도 된다. 우리는 정렬 등 복잡한 로직이 필요해서 사용
enum NoteOrder {
  title,
  date,
  color,
}

enum OrderDirection {
  ascending,
  descending,
}

class GetNotesUseCase {
  final NoteRepository repository;

  // call 메서드는 클래스당 하나만 정의가능
  // 클래스를 함수처럼 호출할 때 사용되는 특별한 메서드
  // 예: final getNotes = GetNotes(repository);
  //     final notes = await getNotes(); // 여기서 call() 메서드가 호출됨
  GetNotesUseCase(this.repository);
  Future<List<Note>> call(
    NoteOrder noteOrder,
    OrderDirection orderDirection, {
    String? query,
  }) async {
    List<Note> notes = await repository.getNotes(query: query);

    switch (noteOrder) {
      // 제목 순서로 sort
      case NoteOrder.title:
        if (orderDirection == OrderDirection.ascending) {
          notes.sort((a, b) => a.title.compareTo(b.title));
        } else {
          notes.sort((a, b) => b.title.compareTo(a.title));
        }

      // 날짜 순서로 sort
      case NoteOrder.date:
        if (orderDirection == OrderDirection.ascending) {
          notes.sort((a, b) => a.createdAt.compareTo(b.createdAt));
        } else {
          notes.sort((a, b) => b.createdAt.compareTo(a.createdAt));
        }

      // 색상 순서로 sort
      case NoteOrder.color:
        if (orderDirection == OrderDirection.ascending) {
          notes.sort((a, b) => a.color.compareTo(b.color));
        } else {
          notes.sort((a, b) => b.color.compareTo(a.color));
        }
    }

    return notes;
  }
}
