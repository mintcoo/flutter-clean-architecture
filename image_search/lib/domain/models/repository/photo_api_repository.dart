import 'package:image_search/data/api/result.dart';
import 'package:image_search/domain/models/photo_model.dart';

// 여기는 interface 역할과 모아서 보기 좋은 파일
abstract class PhotoApiRepository {
  // Result로 묶으면 에러도 표시 o 성공한 데이터도 표시 o
  Future<Result<List<Photo>>> getPhotos(String query);
}
