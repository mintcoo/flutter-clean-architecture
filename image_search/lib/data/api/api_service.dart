import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:image_search/models/photo_model.dart';
import 'package:http/http.dart' as http;

class PixabayApi {
  // 사진들 가져오기
  Future<List<Photo>> getPhotos(String query) async {
    await dotenv.load();
    String baseUrl = dotenv.get("BASE_URL");
    String key = dotenv.get("PIXABAY_API_KEY");
    List<Photo> photoList = [];

    final url = Uri.parse("$baseUrl?key=$key&q=$query&image_type=photo");
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
