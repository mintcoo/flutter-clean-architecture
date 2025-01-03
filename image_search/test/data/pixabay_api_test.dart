import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_search/data/api/pixabay_api.dart';
import 'package:image_search/data/api/result.dart';
import 'package:image_search/data/repository/photo_api_repository_impl.dart';
import 'package:image_search/domain/models/photo_model.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import 'pixabay_api_test.mocks.dart';

// 테스트 시 필요한 모의 객체 생성
@GenerateMocks([http.Client])
void main() {
  test("PixabayApi 테스트", () async {
    await dotenv.load();
    String baseUrl = dotenv.get("BASE_URL");
    String key = dotenv.get("PIXABAY_API_KEY");
    final api = PhotoApiRepositoryImpl(api: PixabayApi(http.Client()));
    // 모의 객체 생성
    final client = MockClient();

    // 모의 객체의 동작 정의
    when(
      client.get(
        Uri.parse("$baseUrl?key=$key&q=cat&image_type=photo"),
      ),
    ).thenAnswer((_) async => http.Response(fakeJsonBody, 200));

    // 테스트 대상 메서드 호출
    final Result<List<Photo>> result = await api.getPhotos("cat");

    // 테스트 결과 검증
    expect(
      (result as Success).data.first.id,
      8618301,
    );
  });
}

// 테스트 데이터
String fakeJsonBody = """
{
  "total": 29382,
  "totalHits": 500,
  "hits": [
    {
      "id": 8618301,
      "pageURL": "https://pixabay.com/photos/simba-cat-portrait-cat-photography-8618301/",
      "type": "photo",
      "tags": "simba, animal, cat",
      "previewURL": "https://cdn.pixabay.com/photo/2024/03/07/10/38/simba-8618301_150.jpg",
      "previewWidth": 150,
      "previewHeight": 100,
      "webformatURL": "https://pixabay.com/get/g32698e6c750145245eb05c8f0a7054f9da3feb200acda822ca45e3549a378b3c03131c870b146e060c9765312a580aa2836ded01fa985e7126b0c0a1795b3d33_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 426,
      "largeImageURL": "https://pixabay.com/get/g7feccd783f2b70d071ff3a2b40d559f2956f8249d5c17fc74d565e7615455a893f2c90b4d307c6f017c81ce8b72d1a3a998b36e4d1acaea15b59f092e214479e_1280.jpg",
      "imageWidth": 6016,
      "imageHeight": 4000,
      "imageSize": 6194350,
      "views": 68382,
      "downloads": 63680,
      "collections": 2480,
      "likes": 183,
      "comments": 26,
      "user_id": 5211440,
      "user": "Jill-Schafer-Creative-Lab",
      "userImageURL": "https://cdn.pixabay.com/user/2022/09/07/09-11-48-369_250x250.png"
    },
    {
      "id": 8601492,
      "pageURL": "https://pixabay.com/photos/european-shorthair-cat-animal-8601492/",
      "type": "photo",
      "tags": "european shorthair, nature, cat",
      "previewURL": "https://cdn.pixabay.com/photo/2024/02/28/07/42/european-shorthair-8601492_150.jpg",
      "previewWidth": 150,
      "previewHeight": 100,
      "webformatURL": "https://pixabay.com/get/g444d051fd89153dc2c3901d5873ffd77a03bf67c56a42992c0caad643066ba2be8a616d59177fac113f4ce20e054d5b9d59ab3208b21cfa8c60b1634bea02fe4_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 427,
      "largeImageURL": "https://pixabay.com/get/g70bcedca54bfb3faa0c479c8fd433c1e2f99f6c3932a32632d130bbfd5b7445feef4f7a5236d985441fbc586a4a862b7e1fa185153328e09c189b2cce20a8c07_1280.jpg",
      "imageWidth": 6000,
      "imageHeight": 4000,
      "imageSize": 3276998,
      "views": 72604,
      "downloads": 62329,
      "collections": 2669,
      "likes": 255,
      "comments": 4,
      "user_id": 9285194,
      "user": "guvo59",
      "userImageURL": ""
    },
    {
      "id": 551554,
      "pageURL": "https://pixabay.com/photos/cat-kitten-pet-kitty-young-cat-551554/",
      "type": "photo",
      "tags": "cat, kitten, pet",
      "previewURL": "https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554_150.jpg",
      "previewWidth": 144,
      "previewHeight": 150,
      "webformatURL": "https://pixabay.com/get/g58a268b9fc388fb0310850f5edf92e3b254ed2ac398f75349c2bfaf582b253a0851b64de3166caa647c1cb6c69b4d008_640.jpg",
      "webformatWidth": 613,
      "webformatHeight": 640,
      "largeImageURL": "https://pixabay.com/get/g848f45fbb8887fffa93ebec5bbcaf4b51ddcf37ab07f4623785f300b0724d55effcffc167f9fbd276c815e0f1f3deac6924685ef5fefd3b4907a4490dec591e5_1280.jpg",
      "imageWidth": 2392,
      "imageHeight": 2500,
      "imageSize": 945751,
      "views": 1665799,
      "downloads": 962266,
      "collections": 49935,
      "likes": 2926,
      "comments": 554,
      "user_id": 617282,
      "user": "Ty_Swartz",
      "userImageURL": "https://cdn.pixabay.com/user/2014/11/30/13-45-12-52_250x250.jpg"
    },
    {
      "id": 1045782,
      "pageURL": "https://pixabay.com/photos/cat-animal-cat-portrait-cats-eyes-1045782/",
      "type": "photo",
      "tags": "cat, animal, cat portrait",
      "previewURL": "https://cdn.pixabay.com/photo/2015/11/16/14/43/cat-1045782_150.jpg",
      "previewWidth": 150,
      "previewHeight": 102,
      "webformatURL": "https://pixabay.com/get/g191b733681b9a182c9e8da68571d24a646712596af6834bd93a3b34a3a6f9939aa99e8eb292ab00a5daab1b7ff61e5975c9f66e8f728a76b9b501a453ba16a81_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 437,
      "largeImageURL": "https://pixabay.com/get/g2fffac9589396c2501c34d29dd578b970b7c4f57e436ca0069bc6f2ab5eec4129dcec01832e0096982b6ef3e76989ca5f17a6eea0dc6d85d7ecb5bbabbb28522_1280.jpg",
      "imageWidth": 2064,
      "imageHeight": 1410,
      "imageSize": 1268850,
      "views": 867318,
      "downloads": 542311,
      "collections": 24078,
      "likes": 2007,
      "comments": 335,
      "user_id": 127419,
      "user": "cocoparisienne",
      "userImageURL": "https://cdn.pixabay.com/user/2023/10/15/14-40-46-737_250x250.jpeg"
    },
    {
      "id": 4611189,
      "pageURL": "https://pixabay.com/photos/kitten-cat-pet-feline-animal-fur-4611189/",
      "type": "photo",
      "tags": "kitten, cat, pet",
      "previewURL": "https://cdn.pixabay.com/photo/2019/11/08/11/56/kitten-4611189_150.jpg",
      "previewWidth": 150,
      "previewHeight": 99,
      "webformatURL": "https://pixabay.com/get/gb6206918d752564407909a6e5b58926ba7f78c5716cba836164a7be9f997787f5b656b2b8201b88c116f2a6be8256c6f077ea970860b1bfafcb5df59780399ce_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 426,
      "largeImageURL": "https://pixabay.com/get/g4ae3e35bc59cd2feb4f7b8966ac16a578c4c1d99a7f9741de03775afe5f16b669c41f1049df0756b4ab18460505646f719bd608ea3688fc39a8b94b7364981d9_1280.jpg",
      "imageWidth": 6000,
      "imageHeight": 4000,
      "imageSize": 3885974,
      "views": 516001,
      "downloads": 394348,
      "collections": 13749,
      "likes": 1114,
      "comments": 188,
      "user_id": 9285194,
      "user": "guvo59",
      "userImageURL": ""
    },
    {
      "id": 8578562,
      "pageURL": "https://pixabay.com/photos/cat-alley-cat-european-cat-animal-8578562/",
      "type": "photo",
      "tags": "cat, alley cat, european cat",
      "previewURL": "https://cdn.pixabay.com/photo/2024/02/17/00/18/cat-8578562_150.jpg",
      "previewWidth": 150,
      "previewHeight": 100,
      "webformatURL": "https://pixabay.com/get/gcc41aa3ccb1da9c0b6b836bf7534385b4b38be718c16e5d76328575ca77ed40d5d34417c417d75bca29e705052aa13ddc0e5af9511c4628c21820f2c87315665_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 425,
      "largeImageURL": "https://pixabay.com/get/gb7a99d0806e2733ba06149a5b8c099436db94edaba4aeb1f0434ff0edfad8f5a5cad13b1864de71e496ee3bfc8240a14177c5ffdf773cf5ed2174e418e8174c1_1280.jpg",
      "imageWidth": 5704,
      "imageHeight": 3785,
      "imageSize": 3344919,
      "views": 36395,
      "downloads": 32684,
      "collections": 1279,
      "likes": 133,
      "comments": 24,
      "user_id": 5602247,
      "user": "JACLOU-DL",
      "userImageURL": "https://cdn.pixabay.com/user/2023/06/10/06-21-55-544_250x250.jpeg"
    },
    {
      "id": 323262,
      "pageURL": "https://pixabay.com/photos/cat-pet-licking-animal-tabby-cat-323262/",
      "type": "photo",
      "tags": "cat, pet, licking",
      "previewURL": "https://cdn.pixabay.com/photo/2014/04/13/20/49/cat-323262_150.jpg",
      "previewWidth": 150,
      "previewHeight": 99,
      "webformatURL": "https://pixabay.com/get/gb25ff455b2d94eb22d3c428dfa6a9a6a03ab153452a761fb774c01e290c12df9e49999ea9ff579b2ab139d9a4244424d_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 426,
      "largeImageURL": "https://pixabay.com/get/g13a0f22710f56ca13977e4330cf0d343e0f080933f0609de1299bddb64e13c86b125c7906cc52336c3b4fc4efefb78b8d95dfb0e0ee8a5e0ab5e222ed602c142_1280.jpg",
      "imageWidth": 2557,
      "imageHeight": 1704,
      "imageSize": 668468,
      "views": 950049,
      "downloads": 511199,
      "collections": 25208,
      "likes": 1901,
      "comments": 333,
      "user_id": 222368,
      "user": "TeamK",
      "userImageURL": "https://cdn.pixabay.com/user/2020/11/21/08-20-58-568_250x250.jpg"
    },
    {
      "id": 6723256,
      "pageURL": "https://pixabay.com/photos/cat-kitten-pet-lick-tongue-6723256/",
      "type": "photo",
      "tags": "cat, kitten, pet",
      "previewURL": "https://cdn.pixabay.com/photo/2021/10/19/10/56/cat-6723256_150.jpg",
      "previewWidth": 150,
      "previewHeight": 100,
      "webformatURL": "https://pixabay.com/get/gbe058dd448b27395edcd880d5b2e052f9ae5f088b2008d1d1ca8c92ed54d841a3e169f4d70c765ef5d0dcf066097b90757f5eed399dcc81deab97255d6a42c55_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 427,
      "largeImageURL": "https://pixabay.com/get/gf70dee8236bda83bc4e1346e33ca88ee91c7f1613210389fe953c7960dc0df2c61cc894b67cedb150775a367fef6b1daf56c8e2d4f04d6e668faece6ecb588a5_1280.jpg",
      "imageWidth": 6362,
      "imageHeight": 4243,
      "imageSize": 11357280,
      "views": 542225,
      "downloads": 482082,
      "collections": 13396,
      "likes": 479,
      "comments": 77,
      "user_id": 15950077,
      "user": "bongbabyhousevn",
      "userImageURL": "https://cdn.pixabay.com/user/2022/12/18/04-21-29-355_250x250.jpg"
    },
    {
      "id": 2605502,
      "pageURL": "https://pixabay.com/photos/cat-sleeping-cat-feline-pet-animal-2605502/",
      "type": "photo",
      "tags": "cat, sleeping cat, feline",
      "previewURL": "https://cdn.pixabay.com/photo/2017/08/07/16/36/cat-2605502_150.jpg",
      "previewWidth": 150,
      "previewHeight": 99,
      "webformatURL": "https://pixabay.com/get/g9cb34e72a0df07ffc1b78102006592885de5ad1d0e025d1a3f8de8fbd948273732ce4b0bcc31d109609beec246b98a28c1c43427cbb39c0d6bbba6aee1ba5fe1_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 425,
      "largeImageURL": "https://pixabay.com/get/gc2052df3216302624df8b29392ae679b7052e0910e644754808869024934d20e2257527181831eac2242c564b966184f7781a2872aaf32386f169ed8f9f5740e_1280.jpg",
      "imageWidth": 4093,
      "imageHeight": 2721,
      "imageSize": 2114396,
      "views": 93458,
      "downloads": 65182,
      "collections": 4622,
      "likes": 423,
      "comments": 53,
      "user_id": 1350882,
      "user": "katya-guseva0",
      "userImageURL": "https://cdn.pixabay.com/user/2015/09/04/15-47-17-572_250x250.jpg"
    },
    {
      "id": 2068462,
      "pageURL": "https://pixabay.com/photos/cat-siamese-cat-fur-kitten-2068462/",
      "type": "photo",
      "tags": "cat, siamese cat, animal",
      "previewURL": "https://cdn.pixabay.com/photo/2017/02/15/12/12/cat-2068462_150.jpg",
      "previewWidth": 150,
      "previewHeight": 99,
      "webformatURL": "https://pixabay.com/get/gaa5b23568632d7e009a1871b0bddaabc18c296133a207175af0101e90b1319add5bc3065c69a64a37a0c072517f1d7e2a71954f184e441ece892ce7736b9ae12_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 426,
      "largeImageURL": "https://pixabay.com/get/g27d54557ced1ea38b1155787a7d103ec3a1c360b55c4774461998f543b161193af4c51062ea1b539baf2e35fa591c6e585536df5919705683393fbc9608c13f6_1280.jpg",
      "imageWidth": 4156,
      "imageHeight": 2771,
      "imageSize": 1966637,
      "views": 273531,
      "downloads": 177231,
      "collections": 10755,
      "likes": 778,
      "comments": 216,
      "user_id": 1460261,
      "user": "webandi",
      "userImageURL": "https://cdn.pixabay.com/user/2020/02/17/17-24-14-812_250x250.jpg"
    },
    {
      "id": 8540772,
      "pageURL": "https://pixabay.com/photos/cat-animal-mammal-domestic-animal-8540772/",
      "type": "photo",
      "tags": "cat, animal, mammal",
      "previewURL": "https://cdn.pixabay.com/photo/2024/01/29/20/40/cat-8540772_150.jpg",
      "previewWidth": 150,
      "previewHeight": 100,
      "webformatURL": "https://pixabay.com/get/g90fef230b54f062196d6f43cae907891c76c878bf185bc7488fb1c67a3767276dcaf372fa477ce38f7cb317eacb8b3266ecb9f0f2994be3b8ace86798f58a474_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 427,
      "largeImageURL": "https://pixabay.com/get/g50331e76a67d2d1a67ff5ac984b45a14bac6a04ab574ca67da6629d20d9ffd0bb4c2c4885e444cc1f8976966f799cda1cc06ce423c375cca65321aceb5741956_1280.jpg",
      "imageWidth": 5568,
      "imageHeight": 3712,
      "imageSize": 4154044,
      "views": 54567,
      "downloads": 46840,
      "collections": 1892,
      "likes": 198,
      "comments": 44,
      "user_id": 13177285,
      "user": "Gruendercoach",
      "userImageURL": "https://cdn.pixabay.com/user/2021/07/11/18-47-15-179_250x250.jpg"
    },
    {
      "id": 1285634,
      "pageURL": "https://pixabay.com/photos/cat-cats-eyes-blue-eyes-gray-cat-1285634/",
      "type": "photo",
      "tags": "cat, cat's eyes, blue eyes",
      "previewURL": "https://cdn.pixabay.com/photo/2016/03/28/12/35/cat-1285634_150.png",
      "previewWidth": 150,
      "previewHeight": 94,
      "webformatURL": "https://pixabay.com/get/g33e484028bc8baed2d505167dacddd2433ab73631979ead49a41a09d651fa895c54bf73c15d3815fd56b6a1813767a1574f3932acef58fa2afdb8c4e3319e3c3_640.png",
      "webformatWidth": 640,
      "webformatHeight": 402,
      "largeImageURL": "https://pixabay.com/get/gf78fff5697732347961ff5c584072436c6f83a8ff40b1594e9d8a6c7b7460f07e09f1551297a6187e7b48efb2fff6f31f22ffd2f01d9130a880a189a6e18cfa4_1280.png",
      "imageWidth": 3677,
      "imageHeight": 2310,
      "imageSize": 11720209,
      "views": 1112616,
      "downloads": 613205,
      "collections": 16617,
      "likes": 1971,
      "comments": 269,
      "user_id": 127419,
      "user": "cocoparisienne",
      "userImageURL": "https://cdn.pixabay.com/user/2023/10/15/14-40-46-737_250x250.jpeg"
    },
    {
      "id": 6748193,
      "pageURL": "https://pixabay.com/photos/cat-kitten-feline-pet-domestic-cat-6748193/",
      "type": "photo",
      "tags": "cat, kitten, feline",
      "previewURL": "https://cdn.pixabay.com/photo/2021/10/27/19/09/cat-6748193_150.jpg",
      "previewWidth": 100,
      "previewHeight": 150,
      "webformatURL": "https://pixabay.com/get/gbf97bedc04c94f63af902e390880bf648fdd571713bd5b9c369ce84a7fe9dc3d4e240cdbe581f334e43d45d0add8a69282a0ef471319f039ba84a2296dbdbf3e_640.jpg",
      "webformatWidth": 427,
      "webformatHeight": 640,
      "largeImageURL": "https://pixabay.com/get/g1678114c0d53f7f9e14224003f2281803dfab7521364791d27f29a365e72f12a8bf74c88e4b046c2376ae693e56de049e88f8129c795c657886ed4c2c0269103_1280.jpg",
      "imageWidth": 3648,
      "imageHeight": 5472,
      "imageSize": 4096830,
      "views": 228806,
      "downloads": 207692,
      "collections": 5117,
      "likes": 280,
      "comments": 37,
      "user_id": 19380687,
      "user": "xsimb",
      "userImageURL": "https://cdn.pixabay.com/user/2023/05/30/20-03-51-325_250x250.jpeg"
    },
    {
      "id": 694730,
      "pageURL": "https://pixabay.com/photos/maine-coon-cat-cats-eyes-black-cat-694730/",
      "type": "photo",
      "tags": "maine coon, cat, cat's eyes",
      "previewURL": "https://cdn.pixabay.com/photo/2015/03/27/13/16/maine-coon-694730_150.jpg",
      "previewWidth": 150,
      "previewHeight": 99,
      "webformatURL": "https://pixabay.com/get/gc2fc2802b0f994ca921f62c93e44056d147ed4826753eb7dccce3236197a1a84b51de5a11a2ceacf05118f7d56c3da89_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 426,
      "largeImageURL": "https://pixabay.com/get/gd9fe6817263b078797dc2eccf404e89451163f4248048979828197a6e4b5d9edb74dd3f7c08388eddef372ff5ac13420dc4f73cfccb0f99e36967e2a02c6e8d8_1280.jpg",
      "imageWidth": 3235,
      "imageHeight": 2157,
      "imageSize": 546452,
      "views": 820428,
      "downloads": 519623,
      "collections": 16516,
      "likes": 1824,
      "comments": 241,
      "user_id": 887962,
      "user": "ClaudiaWollesen",
      "userImageURL": "https://cdn.pixabay.com/user/2019/12/22/16-48-03-254_250x250.jpg"
    },
    {
      "id": 2083492,
      "pageURL": "https://pixabay.com/photos/cat-young-animal-kitten-gray-cat-2083492/",
      "type": "photo",
      "tags": "cat, young animal, kitten",
      "previewURL": "https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_150.jpg",
      "previewWidth": 150,
      "previewHeight": 91,
      "webformatURL": "https://pixabay.com/get/gde0a40de4299f50e17a4c2693ee0d1e93d9d4f39ba08657f4595c39863a4abc4b2fa743712099a829a7ef24eecfb0095cfce023bdfb7e680660fd2c5494d523d_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 390,
      "largeImageURL": "https://pixabay.com/get/g196c0758d15ff395eccef8490bb718f23550ab7aae9f4a6c3626ef15c12b5a1d981aea1b4ac8e9f9e1b76c15483e07e62ab4ecba98eb2733a8258c7cbe956f7e_1280.jpg",
      "imageWidth": 4928,
      "imageHeight": 3008,
      "imageSize": 4130948,
      "views": 1504542,
      "downloads": 917533,
      "collections": 33315,
      "likes": 2880,
      "comments": 422,
      "user_id": 1777190,
      "user": "susannp4",
      "userImageURL": "https://cdn.pixabay.com/user/2015/12/16/17-56-55-832_250x250.jpg"
    },
    {
      "id": 7688749,
      "pageURL": "https://pixabay.com/photos/cat-pet-feline-animal-mammal-fur-7688749/",
      "type": "photo",
      "tags": "cat, pet, feline",
      "previewURL": "https://cdn.pixabay.com/photo/2022/12/31/14/32/cat-7688749_150.jpg",
      "previewWidth": 150,
      "previewHeight": 100,
      "webformatURL": "https://pixabay.com/get/g01e4c0e6983fe125862901c0172e2619aa636f6af7452b5f928f1a8fc8fe863a9729b3cbdbf49fc443fd805595013beb54c94a5c5e0bdbec7d2c5c126f049bfc_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 427,
      "largeImageURL": "https://pixabay.com/get/g698e90a0f6df258446c2a4b9de1749c59bcc561e0475c28d13c534dfd65ed515884a760edb28b666f49c09fdad1d58236fcae82f67040d2b01457390ed8a421a_1280.jpg",
      "imageWidth": 4106,
      "imageHeight": 2737,
      "imageSize": 2805449,
      "views": 165316,
      "downloads": 151871,
      "collections": 3117,
      "likes": 232,
      "comments": 29,
      "user_id": 9126931,
      "user": "Chikilino",
      "userImageURL": "https://cdn.pixabay.com/user/2018/05/28/23-31-09-916_250x250.jpg"
    },
    {
      "id": 8451431,
      "pageURL": "https://pixabay.com/photos/cat-feline-european-cat-alley-cat-8451431/",
      "type": "photo",
      "tags": "cat, feline, european cat",
      "previewURL": "https://cdn.pixabay.com/photo/2023/12/15/21/47/cat-8451431_150.jpg",
      "previewWidth": 150,
      "previewHeight": 100,
      "webformatURL": "https://pixabay.com/get/g9442cbbc8f9ed889f12b3774487846f8cea9eeaba1c26a671b87c995f6ae95f67b981ce3eb8583194e01a045e51e568ff6317faa9ca11858237193efde80672c_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 427,
      "largeImageURL": "https://pixabay.com/get/g9a613fc14b7d8ff6dd6cb49ce591adecc702aa46f71e9af423e5afeb5eabe5182b8eb0619133cbbc9ee0f2a3ec240df8c46ac8ee6cf40bc39f45a22b6f464c37_1280.jpg",
      "imageWidth": 6000,
      "imageHeight": 4000,
      "imageSize": 5191922,
      "views": 34171,
      "downloads": 29613,
      "collections": 921,
      "likes": 134,
      "comments": 25,
      "user_id": 5602247,
      "user": "JACLOU-DL",
      "userImageURL": "https://cdn.pixabay.com/user/2023/06/10/06-21-55-544_250x250.jpeg"
    },
    {
      "id": 114782,
      "pageURL": "https://pixabay.com/photos/cat-pet-licking-animal-tabby-cat-114782/",
      "type": "photo",
      "tags": "cat, nature, pet",
      "previewURL": "https://cdn.pixabay.com/photo/2013/05/30/18/21/cat-114782_150.jpg",
      "previewWidth": 114,
      "previewHeight": 150,
      "webformatURL": "https://pixabay.com/get/g5e7856dad117c14dd7fee74db0c95610be3ef757ccc9c66527edfcfaca690760116d2ee0c6563eb5e012096dbd0746ce_640.jpg",
      "webformatWidth": 489,
      "webformatHeight": 640,
      "largeImageURL": "https://pixabay.com/get/gd14709502530b5b347ccee963f3808ca67587bba85d9c45182f5ab5645b47f7a59c965103f024aba57e122e1880abcc9193da0c518f8d15fb85e3ca18bffc0e0_1280.jpg",
      "imageWidth": 2303,
      "imageHeight": 3012,
      "imageSize": 2261690,
      "views": 639288,
      "downloads": 396762,
      "collections": 12234,
      "likes": 1481,
      "comments": 273,
      "user_id": 5337,
      "user": "ArtTower",
      "userImageURL": "https://cdn.pixabay.com/user/2019/07/27/00-12-46-447_250x250.jpg"
    },
    {
      "id": 7544821,
      "pageURL": "https://pixabay.com/photos/cat-feline-bed-pet-animal-7544821/",
      "type": "photo",
      "tags": "cat, feline, bed",
      "previewURL": "https://cdn.pixabay.com/photo/2022/10/25/04/55/cat-7544821_150.jpg",
      "previewWidth": 150,
      "previewHeight": 100,
      "webformatURL": "https://pixabay.com/get/g27189c2bb3c7533d5931145751de19e323483bc3d64e3a835097de90dacf4ba70e45764df0d44546d4d6bcfbc5097850e1eef0e482a02df3607c1fbaa6d0a53b_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 427,
      "largeImageURL": "https://pixabay.com/get/g741727c7d20989f32d56cf880f604cb4520bc24dbde5a0b8c340c04a878a5f48aa827a0204478f0a5cc7b704c9ee54117414f737e877a74efc734143ca485060_1280.jpg",
      "imageWidth": 5472,
      "imageHeight": 3648,
      "imageSize": 3681365,
      "views": 137781,
      "downloads": 126745,
      "collections": 1886,
      "likes": 225,
      "comments": 24,
      "user_id": 15339432,
      "user": "cat823",
      "userImageURL": "https://cdn.pixabay.com/user/2020/02/21/06-11-25-581_250x250.jpg"
    },
    {
      "id": 300572,
      "pageURL": "https://pixabay.com/photos/cat-pet-animal-tabby-cat-300572/",
      "type": "photo",
      "tags": "cat, pet, animal",
      "previewURL": "https://cdn.pixabay.com/photo/2014/03/29/09/17/cat-300572_150.jpg",
      "previewWidth": 150,
      "previewHeight": 125,
      "webformatURL": "https://pixabay.com/get/g62c15149df4bc4de504a59b0da32ec439ac4cdbf9b702aedafbd7dae75cd98f1e4a70c8b0357539b7e32672d4815cbae_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 536,
      "largeImageURL": "https://pixabay.com/get/gc22503e7fa3c853b9f873aada637ce469e4f80ff7d3f6f33e8f7fbab653349bcd98ccc493416aa8dba599da7e48eda5039a2f348bb88896460c471fa82546c32_1280.jpg",
      "imageWidth": 4751,
      "imageHeight": 3984,
      "imageSize": 3415648,
      "views": 983309,
      "downloads": 227008,
      "collections": 7182,
      "likes": 793,
      "comments": 104,
      "user_id": 69781,
      "user": "Ben_Kerckx",
      "userImageURL": "https://cdn.pixabay.com/user/2017/05/13/20-08-47-204_250x250.jpg"
    }
  ]
}""";
