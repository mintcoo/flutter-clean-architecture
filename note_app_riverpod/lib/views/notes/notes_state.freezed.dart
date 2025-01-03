// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteState {
// @default와 required를 같이 사용하면 오류가 발생
  List<Note> get notes => throw _privateConstructorUsedError;
  String? get searchQuery => throw _privateConstructorUsedError;
  NoteOrder get noteOrder => throw _privateConstructorUsedError;
  OrderDirection get orderDirection => throw _privateConstructorUsedError;
  bool get showSearchField => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteStateCopyWith<NoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteStateCopyWith<$Res> {
  factory $NoteStateCopyWith(NoteState value, $Res Function(NoteState) then) =
      _$NoteStateCopyWithImpl<$Res, NoteState>;
  @useResult
  $Res call(
      {List<Note> notes,
      String? searchQuery,
      NoteOrder noteOrder,
      OrderDirection orderDirection,
      bool showSearchField});
}

/// @nodoc
class _$NoteStateCopyWithImpl<$Res, $Val extends NoteState>
    implements $NoteStateCopyWith<$Res> {
  _$NoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
    Object? searchQuery = freezed,
    Object? noteOrder = null,
    Object? orderDirection = null,
    Object? showSearchField = null,
  }) {
    return _then(_value.copyWith(
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      noteOrder: null == noteOrder
          ? _value.noteOrder
          : noteOrder // ignore: cast_nullable_to_non_nullable
              as NoteOrder,
      orderDirection: null == orderDirection
          ? _value.orderDirection
          : orderDirection // ignore: cast_nullable_to_non_nullable
              as OrderDirection,
      showSearchField: null == showSearchField
          ? _value.showSearchField
          : showSearchField // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteStateImplCopyWith<$Res>
    implements $NoteStateCopyWith<$Res> {
  factory _$$NoteStateImplCopyWith(
          _$NoteStateImpl value, $Res Function(_$NoteStateImpl) then) =
      __$$NoteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Note> notes,
      String? searchQuery,
      NoteOrder noteOrder,
      OrderDirection orderDirection,
      bool showSearchField});
}

/// @nodoc
class __$$NoteStateImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteStateImpl>
    implements _$$NoteStateImplCopyWith<$Res> {
  __$$NoteStateImplCopyWithImpl(
      _$NoteStateImpl _value, $Res Function(_$NoteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
    Object? searchQuery = freezed,
    Object? noteOrder = null,
    Object? orderDirection = null,
    Object? showSearchField = null,
  }) {
    return _then(_$NoteStateImpl(
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      noteOrder: null == noteOrder
          ? _value.noteOrder
          : noteOrder // ignore: cast_nullable_to_non_nullable
              as NoteOrder,
      orderDirection: null == orderDirection
          ? _value.orderDirection
          : orderDirection // ignore: cast_nullable_to_non_nullable
              as OrderDirection,
      showSearchField: null == showSearchField
          ? _value.showSearchField
          : showSearchField // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NoteStateImpl with DiagnosticableTreeMixin implements _NoteState {
  const _$NoteStateImpl(
      {final List<Note> notes = const [],
      this.searchQuery = null,
      this.noteOrder = NoteOrder.date,
      this.orderDirection = OrderDirection.descending,
      this.showSearchField = false})
      : _notes = notes;

// @default와 required를 같이 사용하면 오류가 발생
  final List<Note> _notes;
// @default와 required를 같이 사용하면 오류가 발생
  @override
  @JsonKey()
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  @JsonKey()
  final String? searchQuery;
  @override
  @JsonKey()
  final NoteOrder noteOrder;
  @override
  @JsonKey()
  final OrderDirection orderDirection;
  @override
  @JsonKey()
  final bool showSearchField;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteState(notes: $notes, searchQuery: $searchQuery, noteOrder: $noteOrder, orderDirection: $orderDirection, showSearchField: $showSearchField)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoteState'))
      ..add(DiagnosticsProperty('notes', notes))
      ..add(DiagnosticsProperty('searchQuery', searchQuery))
      ..add(DiagnosticsProperty('noteOrder', noteOrder))
      ..add(DiagnosticsProperty('orderDirection', orderDirection))
      ..add(DiagnosticsProperty('showSearchField', showSearchField));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteStateImpl &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.noteOrder, noteOrder) ||
                other.noteOrder == noteOrder) &&
            (identical(other.orderDirection, orderDirection) ||
                other.orderDirection == orderDirection) &&
            (identical(other.showSearchField, showSearchField) ||
                other.showSearchField == showSearchField));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notes),
      searchQuery,
      noteOrder,
      orderDirection,
      showSearchField);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteStateImplCopyWith<_$NoteStateImpl> get copyWith =>
      __$$NoteStateImplCopyWithImpl<_$NoteStateImpl>(this, _$identity);
}

abstract class _NoteState implements NoteState {
  const factory _NoteState(
      {final List<Note> notes,
      final String? searchQuery,
      final NoteOrder noteOrder,
      final OrderDirection orderDirection,
      final bool showSearchField}) = _$NoteStateImpl;

  @override // @default와 required를 같이 사용하면 오류가 발생
  List<Note> get notes;
  @override
  String? get searchQuery;
  @override
  NoteOrder get noteOrder;
  @override
  OrderDirection get orderDirection;
  @override
  bool get showSearchField;
  @override
  @JsonKey(ignore: true)
  _$$NoteStateImplCopyWith<_$NoteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
