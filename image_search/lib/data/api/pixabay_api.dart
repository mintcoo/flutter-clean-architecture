import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/models/photo_model.dart';
import 'package:http/http.dart' as http;

class PixabayApi implements PhotoApiRepository {
  // 사진들 가져오기
  @override
  Future<List<PhotoModel>> getPhotos(String query,
      {http.Client? client}) async {
    await dotenv.load();
    String baseUrl = dotenv.get("BASE_URL");
    String key = dotenv.get("PIXABAY_API_KEY");
    List<PhotoModel> photoList = [];

    // client 가 null 이면 기존 클라이언트 사용
    client ??= http.Client();

    final url = Uri.parse("$baseUrl?key=$key&q=$query&image_type=photo");
    final response = await client.get(url);
    if (response.statusCode == 200) {
      final Map<String, dynamic> photos = jsonDecode(response.body);

      for (var photo in photos['hits']) {
        final photoInstance = PhotoModel.fromJson(photo);
        photoList.add(photoInstance);
      }
      return photoList;
    }
    throw Error();
  }
}
