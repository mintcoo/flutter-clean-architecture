import 'package:image_search/models/photo_model.dart';

abstract class PhotoApiRepository {
  Future<List<Photo>> getPhotos(String query);
}
