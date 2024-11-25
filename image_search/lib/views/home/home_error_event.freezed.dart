// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_error_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeErrorEvent {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowError value) showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowError value)? showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowError value)? showError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeErrorEventCopyWith<HomeErrorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeErrorEventCopyWith<$Res> {
  factory $HomeErrorEventCopyWith(
          HomeErrorEvent value, $Res Function(HomeErrorEvent) then) =
      _$HomeErrorEventCopyWithImpl<$Res, HomeErrorEvent>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$HomeErrorEventCopyWithImpl<$Res, $Val extends HomeErrorEvent>
    implements $HomeErrorEventCopyWith<$Res> {
  _$HomeErrorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowErrorImplCopyWith<$Res>
    implements $HomeErrorEventCopyWith<$Res> {
  factory _$$ShowErrorImplCopyWith(
          _$ShowErrorImpl value, $Res Function(_$ShowErrorImpl) then) =
      __$$ShowErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowErrorImplCopyWithImpl<$Res>
    extends _$HomeErrorEventCopyWithImpl<$Res, _$ShowErrorImpl>
    implements _$$ShowErrorImplCopyWith<$Res> {
  __$$ShowErrorImplCopyWithImpl(
      _$ShowErrorImpl _value, $Res Function(_$ShowErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShowErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowErrorImpl implements ShowError {
  const _$ShowErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeErrorEvent.showError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowErrorImplCopyWith<_$ShowErrorImpl> get copyWith =>
      __$$ShowErrorImplCopyWithImpl<_$ShowErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showError,
  }) {
    return showError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showError,
  }) {
    return showError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showError,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowError value) showError,
  }) {
    return showError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowError value)? showError,
  }) {
    return showError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowError value)? showError,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(this);
    }
    return orElse();
  }
}

abstract class ShowError implements HomeErrorEvent {
  const factory ShowError(final String message) = _$ShowErrorImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ShowErrorImplCopyWith<_$ShowErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
