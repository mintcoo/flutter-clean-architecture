import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_error_event.freezed.dart';

@freezed
class HomeErrorEvent with _$HomeErrorEvent {
  const factory HomeErrorEvent.showError(String message) = ShowError;
}
