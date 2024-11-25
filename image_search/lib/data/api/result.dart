// Result라는 객체를 생성할 수 없도록 추상클래스로

// abstract class Result<T> {
//   factory Result.success(T data) => Success(data);
//   factory Result.error(String message) => Error(message);
// }

// class Success<T> implements Result<T> {
//   final T data;

//   Success(this.data);
// }

// class Error<T> implements Result<T> {
//   final String message;

//   Error(this.message);
// }

// freezed 사용하는 방법
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success;
  const factory Result.error(String message) = Error;
}
