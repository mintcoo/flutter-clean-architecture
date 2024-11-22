import 'dart:async';
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/models/photo_model.dart';

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
  final PhotoApiRepository repository;
  HomeViewModel(this.repository);

  List<Photo> _photos = [];
  // 외부에서 접근할 수 있도록 getter (_를 붙여서 만든 변수는 Private 변수로써 외부에서 접근할 수 없음)
  // List<Photo> get photos => _photos;
  // 그런데 외부에서 또 clear(), add() 등의 메서드를 사용하면 수정이 가능
  // 이런식으로 하면 외부에서 수정을 하려면 에러가 발생하도록 아래 코드처럼 사용 가능
  UnmodifiableListView<Photo> get photos => UnmodifiableListView(_photos);

  Future<void> fetch(String query) async {
    final result = await repository.getPhotos(query);
    _photos = result;
    // 변경사항을 알려줌으로써 UI를 새로 렌더링
    notifyListeners();
  }
}
