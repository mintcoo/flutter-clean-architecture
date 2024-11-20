import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search/data/api/api_service.dart';
import 'package:image_search/models/photo_model.dart';

// 원하는 객체를 원하는 위젯으로 전달하는 곳
class PhotoProvider extends InheritedWidget {
  final PixabayApi api;
  // 사진들을 스트림으로 전달하는 곳, 외부에서는 스트림을 통해서 변경사항을 체크
  // ..add([]) 초기값 설정
  final photoStreamController = StreamController<List<PhotoModel>>()..add([]);

  Stream<List<PhotoModel>> get photosStream => photoStreamController.stream;

  PhotoProvider({
    super.key,
    required super.child,
    required this.api,
  });
  // 기본 Provider 값 설정
  static PhotoProvider? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PhotoProvider>();
  }

  static PhotoProvider of(BuildContext context) {
    final PhotoProvider? result = maybeOf(context);
    assert(result != null, 'No PhotoProvider found in context');
    return result!;
  }

  // 사진 가져와서 photoStreamController에 추가하면
  Future<void> fetch(String query) async {
    final result = await api.getPhotos(query);
    photoStreamController.add(result);
  }

  // 이전 상태의 oldWidget과 현재 상태의 객체가 다르면 true를 반환해서 위젯을 다시 그리게 함
  @override
  bool updateShouldNotify(PhotoProvider oldWidget) {
    return oldWidget.api != api;
  }
}
