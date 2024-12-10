// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_edit_note_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddEditNoteState _$AddEditNoteStateFromJson(Map<String, dynamic> json) {
  return _AddEditNoteState.fromJson(json);
}

/// @nodoc
mixin _$AddEditNoteState {
  Note get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddEditNoteStateCopyWith<AddEditNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditNoteStateCopyWith<$Res> {
  factory $AddEditNoteStateCopyWith(
          AddEditNoteState value, $Res Function(AddEditNoteState) then) =
      _$AddEditNoteStateCopyWithImpl<$Res, AddEditNoteState>;
  @useResult
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$AddEditNoteStateCopyWithImpl<$Res, $Val extends AddEditNoteState>
    implements $AddEditNoteStateCopyWith<$Res> {
  _$AddEditNoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddEditNoteStateImplCopyWith<$Res>
    implements $AddEditNoteStateCopyWith<$Res> {
  factory _$$AddEditNoteStateImplCopyWith(_$AddEditNoteStateImpl value,
          $Res Function(_$AddEditNoteStateImpl) then) =
      __$$AddEditNoteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Note note});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$AddEditNoteStateImplCopyWithImpl<$Res>
    extends _$AddEditNoteStateCopyWithImpl<$Res, _$AddEditNoteStateImpl>
    implements _$$AddEditNoteStateImplCopyWith<$Res> {
  __$$AddEditNoteStateImplCopyWithImpl(_$AddEditNoteStateImpl _value,
      $Res Function(_$AddEditNoteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$AddEditNoteStateImpl(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddEditNoteStateImpl
    with DiagnosticableTreeMixin
    implements _AddEditNoteState {
  const _$AddEditNoteStateImpl({required this.note});

  factory _$AddEditNoteStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddEditNoteStateImplFromJson(json);

  @override
  final Note note;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddEditNoteState(note: $note)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddEditNoteState'))
      ..add(DiagnosticsProperty('note', note));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEditNoteStateImpl &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEditNoteStateImplCopyWith<_$AddEditNoteStateImpl> get copyWith =>
      __$$AddEditNoteStateImplCopyWithImpl<_$AddEditNoteStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddEditNoteStateImplToJson(
      this,
    );
  }
}

abstract class _AddEditNoteState implements AddEditNoteState {
  const factory _AddEditNoteState({required final Note note}) =
      _$AddEditNoteStateImpl;

  factory _AddEditNoteState.fromJson(Map<String, dynamic> json) =
      _$AddEditNoteStateImpl.fromJson;

  @override
  Note get note;
  @override
  @JsonKey(ignore: true)
  _$$AddEditNoteStateImplCopyWith<_$AddEditNoteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
