import 'dart:math';

import 'package:image_search/data/api/result.dart';
import 'package:image_search/domain/models/photo_model.dart';
import 'package:image_search/domain/models/repository/photo_api_repository.dart';

// 뷰 모델에서 로직을 처리하지 말고 여기서 로직을 처리
// 뷰 모델은 그저 데이터를 받아서 전달해주는 역할만 함
class GetPhotosUseCase {
  final PhotoApiRepository repository;

  GetPhotosUseCase(this.repository);

  //call: Dart에서 특별한 의미를 가짐. 클래스를 함수처럼 호출 가능하게 만듦
  Future<Result<List<Photo>>> call(String query) async {
    final Result<List<Photo>> result = await repository.getPhotos(query);

    return result.when(success: (photos) {
      // 3개보다 데이터가 적게 들어올 수 있으므로 length 중 최소값을 반환
      return Result.success(photos.sublist(0, min(photos.length, 3)));
    }, error: (message) {
      return Result.error(message);
    });
  }
}
