import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

// api 사진 받아오는 곳
class PixabayApi {
  final http.Client client;

  PixabayApi(this.client);

  Future<Iterable> getPhotos(String query, {http.Client? client}) async {
    await dotenv.load();
    String baseUrl = dotenv.get("BASE_URL");
    String key = dotenv.get("PIXABAY_API_KEY");

    // client 가 null 이면 기존 클라이언트 사용
    client ??= http.Client();

    final url = Uri.parse("$baseUrl?key=$key&q=$query&image_type=photo");
    final response = await client.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> photos = jsonDecode(response.body);
      Iterable hits = photos['hits'];
      return hits;
    }
    throw Error();
  }
}
