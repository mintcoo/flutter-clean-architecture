import 'dart:async';
import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/models/photo_model.dart';

class HomeViewModel {
  final PhotoApiRepository repository;
  HomeViewModel(this.repository);
  // 사진들을 스트림으로 전달하는 곳, 외부에서는 스트림을 통해서 변경사항을 체크
  // ..add([]) 초기값 설정
  final photoStreamController = StreamController<List<PhotoModel>>()..add([]);
  Stream<List<PhotoModel>> get photoStream => photoStreamController.stream;

  // 사진 가져와서 photoStreamController에 추가
  Future<void> fetch(String query) async {
    final result = await repository.getPhotos(query);
    photoStreamController.add(result);
  }
}
