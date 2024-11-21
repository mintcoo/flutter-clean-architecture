import 'package:json_annotation/json_annotation.dart';
part 'photo_model.g.dart';

// 이런 코드 제너레이터를 이용해서 코드를 자동생성 해주면 인간의 실수 방지 가능해서 안전하다
// 내가 원하는 데이터만 받을 수 있어서 간편하고 좋다
@JsonSerializable()
class Photo {
  final int id;
  final String tags;
  // 키 이름을 변경해주는 어노테이션
  @JsonKey(name: 'webformatURL')
  final String webformatUrl;

  const Photo({
    required this.id,
    required this.webformatUrl,
    required this.tags,
  });

  // 팩토리 생성자 _$PhotoModelFromJson은 룰이다
  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}
// 항상 수정을 하면 반드시 다시 빌드를 해줘야 한다@@@