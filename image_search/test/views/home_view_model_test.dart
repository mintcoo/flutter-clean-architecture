import 'package:flutter_test/flutter_test.dart';
import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/models/photo_model.dart';
import 'package:image_search/views/home_view_model.dart';

void main() {
  test("Stream이 잘 동작해야한다", () async {
    final viewModel = HomeViewModel(FakePhotoApiRepository());

    await viewModel.fetch("cat");
    await viewModel.fetch("apple");

    expect(
      viewModel.photoStream,
      emitsInOrder([
        isA<List<Photo>>(), // 데이터가 들어 왔는지 체크
        isA<List<Photo>>(), // 데이터가 들어 왔는지 체크
      ]),
    );
  });
}

// 가짜 임의 데이터를 만들어서 테스트 (photoApiRepository 에서 상속을 받기 떄문에 가짜 데이터를 만들어야 함)
class FakePhotoApiRepository extends PhotoApiRepository {
  @override
  Future<List<Photo>> getPhotos(String query) async {
    Future.delayed(const Duration(milliseconds: 500));

    return fakeJson.map((json) => Photo.fromJson(json)).toList();
  }
}

List<Map<String, dynamic>> fakeJson = [
  {
    "id": 7679117,
    "pageURL":
        "https://pixabay.com/photos/flower-stamens-hypericum-macro-7679117/",
    "type": "photo",
    "tags": "flower, beautiful flowers, nature",
    "previewURL":
        "https://cdn.pixabay.com/photo/2022/12/26/13/50/flower-7679117_150.jpg",
    "previewWidth": 150,
    "previewHeight": 100,
    "webformatURL":
        "https://pixabay.com/get/g3f5143c60f982eb65b4e4666f1c30561a58553dcd2f8ae36fd8f10e59d16e57381b6257370e7ec89f2b723b1ab86a830033ac931a5545ffb18edbfbca959caf8_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 427,
    "largeImageURL":
        "https://pixabay.com/get/g6339fc725e06353d6866e92d71f07bc818ba60c99f0b145ec260706d6b5a506794dc161b8e154e6b82b3b451793881b840399850023fbec9d2e23fb179d37596_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 4000,
    "imageSize": 8137356,
    "views": 25153,
    "downloads": 19204,
    "collections": 829,
    "likes": 120,
    "comments": 20,
    "user_id": 4379051,
    "user": "Alfred_Grupstra",
    "userImageURL":
        "https://cdn.pixabay.com/user/2024/08/25/22-05-08-334_250x250.jpg"
  },
  {
    "id": 6316445,
    "pageURL": "https://pixabay.com/photos/rapeseeds-yellow-flowers-6316445/",
    "type": "photo",
    "tags": "rapeseeds, yellow, flowers",
    "previewURL":
        "https://cdn.pixabay.com/photo/2021/06/06/21/55/rapeseeds-6316445_150.jpg",
    "previewWidth": 150,
    "previewHeight": 100,
    "webformatURL":
        "https://pixabay.com/get/g5d7d18546a57e2f3a4a823f07e1a2ca5af16847143aff87c6621c7e72854342777f4cd34e4eabaf2a341880697ae76d1ca1316db967856ff2ef27ec93d31ff84_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 427,
    "largeImageURL":
        "https://pixabay.com/get/gaf9ec7a73a4308472b043240fcbb5766c417a1c0fb9a00c20619730de68c7c21749223bb7aebc75ae06b7be2bb9823e840803d60a6da06aed1a456b3563a7a1d_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 4000,
    "imageSize": 7735260,
    "views": 36300,
    "downloads": 29079,
    "collections": 901,
    "likes": 85,
    "comments": 21,
    "user_id": 11378535,
    "user": "__Tatius__",
    "userImageURL":
        "https://cdn.pixabay.com/user/2020/10/16/11-47-36-873_250x250.jpeg"
  },
];
