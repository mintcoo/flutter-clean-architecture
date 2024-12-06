import 'dart:async';
import 'package:flutter/material.dart';
import 'package:image_search/data/api/result.dart';
import 'package:image_search/domain/models/photo_model.dart';
import 'package:image_search/domain/use_case/get_photos_use_case.dart';
import 'package:image_search/views/home/home_error_event.dart';
import 'package:image_search/views/home/home_state.dart';

// ChangeNotifier 사용하면서 우선 기존 코드는 주석
// class HomeViewModel {
//   final PhotoApiRepository repository;
//   HomeViewModel(this.repository);
//   // 사진들을 스트림으로 전달하는 곳, 외부에서는 스트림을 통해서 변경사항을 체크
//   // ..add([]) 초기값 설정
//   final photoStreamController = StreamController<List<Photo>>()..add([]);
//   Stream<List<Photo>> get photoStream => photoStreamController.stream;

//   // 사진 가져와서 photoStreamController에 추가
//   Future<void> fetch(String query) async {
//     final result = await repository.getPhotos(query);
//     photoStreamController.add(result);
//   }
// }

class HomeViewModel extends ChangeNotifier {
  final GetPhotosUseCase getPhotosUseCase;

  HomeViewModel(this.getPhotosUseCase);

  // 홈 화면 상태 관리
  HomeState _state = HomeState([], false);
  HomeState get state => _state;

  // 이 state들을 따로 클래스 만들었음으로 제거(주석처리)
  // List<Photo> _photos = [];
  // // 외부에서 접근할 수 있도록 getter (_를 붙여서 만든 변수는 Private 변수로써 외부에서 접근할 수 없음)
  // // List<Photo> get photos => _photos;
  // // 그런데 외부에서 또 clear(), add() 등의 메서드를 사용하면 수정이 가능
  // // 이런식으로 하면 외부에서 수정을 하려면 에러가 발생하도록 아래 코드처럼 사용 가능
  // UnmodifiableListView<Photo> get photos => UnmodifiableListView(_photos);

  // // 외부에서 로딩 상태에 접근 못하게 getter로 만듦
  // bool _isLoading = false;
  // bool get isLoading => _isLoading;

  // 에러 이벤트 스트림 컨트롤러 -> 이걸 홈 화면에 띄워줘야 한다
  final _eventController = StreamController<HomeErrorEvent>();
  Stream<HomeErrorEvent> get eventStream => _eventController.stream;

  Future<void> fetch(String query) async {
    _state = state.copyWith(isLoading: true);
    // 로딩 상태 변경 알려줌으로써 UI 새로 렌더링
    notifyListeners();

    // call 메서드를 사용해서 호출함으로 생략이 가능 원래는 getPhotosUseCase.call(query)
    final Result<List<Photo>> result = await getPhotosUseCase(query);
    result.when(
      success: (photos) {
        _state = state.copyWith(photos: photos);
        // 변경사항을 알려줌으로써 UI를 새로 렌더링
        notifyListeners();
      },
      error: (message) {
        _eventController.add(HomeErrorEvent.showError(message));
      },
    );
    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }
}
