import 'dart:convert';

import 'package:image_search/models/photo_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  // 사진들 가져오기
  static Future<List<Photo>> getPhotos(String query) async {
    List<Photo> photoList = [];

    final url = Uri.parse(
        "https://pixabay.com/api/?key=32961868-e28122e43e697eb19cee699a0&q=$query&image_type=photo");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final Map<String, dynamic> photos = jsonDecode(response.body);

      for (var photo in photos['hits']) {
        final photoInstance = Photo.fromJson(photo);
        photoList.add(photoInstance);
      }
      return photoList;
    }
    throw Error();
  }
}
