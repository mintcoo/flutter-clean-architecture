// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_edit_note_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddEditNoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int color) changeColor,
    required TResult Function(int? id, String title, String content) saveNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int color)? changeColor,
    TResult? Function(int? id, String title, String content)? saveNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int color)? changeColor,
    TResult Function(int? id, String title, String content)? saveNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(changeBgColor value) changeColor,
    required TResult Function(saveNote value) saveNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(changeBgColor value)? changeColor,
    TResult? Function(saveNote value)? saveNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(changeBgColor value)? changeColor,
    TResult Function(saveNote value)? saveNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditNoteEventCopyWith<$Res> {
  factory $AddEditNoteEventCopyWith(
          AddEditNoteEvent value, $Res Function(AddEditNoteEvent) then) =
      _$AddEditNoteEventCopyWithImpl<$Res, AddEditNoteEvent>;
}

/// @nodoc
class _$AddEditNoteEventCopyWithImpl<$Res, $Val extends AddEditNoteEvent>
    implements $AddEditNoteEventCopyWith<$Res> {
  _$AddEditNoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$changeBgColorImplCopyWith<$Res> {
  factory _$$changeBgColorImplCopyWith(
          _$changeBgColorImpl value, $Res Function(_$changeBgColorImpl) then) =
      __$$changeBgColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int color});
}

/// @nodoc
class __$$changeBgColorImplCopyWithImpl<$Res>
    extends _$AddEditNoteEventCopyWithImpl<$Res, _$changeBgColorImpl>
    implements _$$changeBgColorImplCopyWith<$Res> {
  __$$changeBgColorImplCopyWithImpl(
      _$changeBgColorImpl _value, $Res Function(_$changeBgColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$changeBgColorImpl(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$changeBgColorImpl implements changeBgColor {
  const _$changeBgColorImpl(this.color);

  @override
  final int color;

  @override
  String toString() {
    return 'AddEditNoteEvent.changeColor(color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changeBgColorImpl &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$changeBgColorImplCopyWith<_$changeBgColorImpl> get copyWith =>
      __$$changeBgColorImplCopyWithImpl<_$changeBgColorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int color) changeColor,
    required TResult Function(int? id, String title, String content) saveNote,
  }) {
    return changeColor(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int color)? changeColor,
    TResult? Function(int? id, String title, String content)? saveNote,
  }) {
    return changeColor?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int color)? changeColor,
    TResult Function(int? id, String title, String content)? saveNote,
    required TResult orElse(),
  }) {
    if (changeColor != null) {
      return changeColor(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(changeBgColor value) changeColor,
    required TResult Function(saveNote value) saveNote,
  }) {
    return changeColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(changeBgColor value)? changeColor,
    TResult? Function(saveNote value)? saveNote,
  }) {
    return changeColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(changeBgColor value)? changeColor,
    TResult Function(saveNote value)? saveNote,
    required TResult orElse(),
  }) {
    if (changeColor != null) {
      return changeColor(this);
    }
    return orElse();
  }
}

abstract class changeBgColor implements AddEditNoteEvent {
  const factory changeBgColor(final int color) = _$changeBgColorImpl;

  int get color;
  @JsonKey(ignore: true)
  _$$changeBgColorImplCopyWith<_$changeBgColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$saveNoteImplCopyWith<$Res> {
  factory _$$saveNoteImplCopyWith(
          _$saveNoteImpl value, $Res Function(_$saveNoteImpl) then) =
      __$$saveNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? id, String title, String content});
}

/// @nodoc
class __$$saveNoteImplCopyWithImpl<$Res>
    extends _$AddEditNoteEventCopyWithImpl<$Res, _$saveNoteImpl>
    implements _$$saveNoteImplCopyWith<$Res> {
  __$$saveNoteImplCopyWithImpl(
      _$saveNoteImpl _value, $Res Function(_$saveNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$saveNoteImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$saveNoteImpl implements saveNote {
  const _$saveNoteImpl(this.id, this.title, this.content);

  @override
  final int? id;
  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'AddEditNoteEvent.saveNote(id: $id, title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$saveNoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$saveNoteImplCopyWith<_$saveNoteImpl> get copyWith =>
      __$$saveNoteImplCopyWithImpl<_$saveNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int color) changeColor,
    required TResult Function(int? id, String title, String content) saveNote,
  }) {
    return saveNote(id, title, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int color)? changeColor,
    TResult? Function(int? id, String title, String content)? saveNote,
  }) {
    return saveNote?.call(id, title, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int color)? changeColor,
    TResult Function(int? id, String title, String content)? saveNote,
    required TResult orElse(),
  }) {
    if (saveNote != null) {
      return saveNote(id, title, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(changeBgColor value) changeColor,
    required TResult Function(saveNote value) saveNote,
  }) {
    return saveNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(changeBgColor value)? changeColor,
    TResult? Function(saveNote value)? saveNote,
  }) {
    return saveNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(changeBgColor value)? changeColor,
    TResult Function(saveNote value)? saveNote,
    required TResult orElse(),
  }) {
    if (saveNote != null) {
      return saveNote(this);
    }
    return orElse();
  }
}

abstract class saveNote implements AddEditNoteEvent {
  const factory saveNote(
      final int? id, final String title, final String content) = _$saveNoteImpl;

  int? get id;
  String get title;
  String get content;
  @JsonKey(ignore: true)
  _$$saveNoteImplCopyWith<_$saveNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
