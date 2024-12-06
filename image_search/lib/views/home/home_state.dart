// import 'package:image_search/domain/models/photo_model.dart';

// class HomeState {
//   // final 붙이면 이제 불변 객체라서 값을 바꿀 수 없음
//   final List<Photo> photos;
//   final bool isLoading;

//   HomeState(this.photos, this.isLoading);

//   HomeState copy({List<Photo>? photos, bool? isLoading}) {
//     // 새로운 객체 만들어서 반환하는 방법으로 수정
//     // 들어오는 값이 null이면 기존 값 반환하도록
//     return HomeState(
//       photos ?? this.photos,
//       isLoading ?? this.isLoading,
//     );
//   }
// }

// freezed 사용하는 방법
// 결국 이렇게 상태관리 하는 이유는 뷰모델 내부에서 외부에 공개하는 데이터들은 다 읽기 전용, 불변객체로 만들자
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_search/domain/models/photo_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState(
    List<Photo> photos,
    bool isLoading,
  ) = _HomeState;
}
