import 'package:image_search/domain/models/photo_model.dart';

// 여기는 interface 역할과 모아서 보기 좋은 파일
abstract class PhotoApiRepository {
  Future<List<Photo>> getPhotos(String query);
}
