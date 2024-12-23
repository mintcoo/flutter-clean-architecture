// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) loadNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder noteOrder, String? query) changeOrder,
    required TResult Function(OrderDirection orderDirection, String? query)
        changeDirection,
    required TResult Function() toggleSearchField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? loadNotes,
    TResult? Function(Note note)? deleteNote,
    TResult? Function()? restoreNote,
    TResult? Function(NoteOrder noteOrder, String? query)? changeOrder,
    TResult? Function(OrderDirection orderDirection, String? query)?
        changeDirection,
    TResult? Function()? toggleSearchField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder, String? query)? changeOrder,
    TResult Function(OrderDirection orderDirection, String? query)?
        changeDirection,
    TResult Function()? toggleSearchField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
    required TResult Function(ChangeDirection value) changeDirection,
    required TResult Function(ToggleSearchField value) toggleSearchField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotes value)? loadNotes,
    TResult? Function(DeleteNote value)? deleteNote,
    TResult? Function(RestoreNote value)? restoreNote,
    TResult? Function(ChangeOrder value)? changeOrder,
    TResult? Function(ChangeDirection value)? changeDirection,
    TResult? Function(ToggleSearchField value)? toggleSearchField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ChangeDirection value)? changeDirection,
    TResult Function(ToggleSearchField value)? toggleSearchField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesEventCopyWith<$Res> {
  factory $NotesEventCopyWith(
          NotesEvent value, $Res Function(NotesEvent) then) =
      _$NotesEventCopyWithImpl<$Res, NotesEvent>;
}

/// @nodoc
class _$NotesEventCopyWithImpl<$Res, $Val extends NotesEvent>
    implements $NotesEventCopyWith<$Res> {
  _$NotesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadNotesImplCopyWith<$Res> {
  factory _$$LoadNotesImplCopyWith(
          _$LoadNotesImpl value, $Res Function(_$LoadNotesImpl) then) =
      __$$LoadNotesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$LoadNotesImplCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$LoadNotesImpl>
    implements _$$LoadNotesImplCopyWith<$Res> {
  __$$LoadNotesImplCopyWithImpl(
      _$LoadNotesImpl _value, $Res Function(_$LoadNotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$LoadNotesImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadNotesImpl implements LoadNotes {
  const _$LoadNotesImpl({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'NotesEvent.loadNotes(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadNotesImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadNotesImplCopyWith<_$LoadNotesImpl> get copyWith =>
      __$$LoadNotesImplCopyWithImpl<_$LoadNotesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) loadNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder noteOrder, String? query) changeOrder,
    required TResult Function(OrderDirection orderDirection, String? query)
        changeDirection,
    required TResult Function() toggleSearchField,
  }) {
    return loadNotes(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? loadNotes,
    TResult? Function(Note note)? deleteNote,
    TResult? Function()? restoreNote,
    TResult? Function(NoteOrder noteOrder, String? query)? changeOrder,
    TResult? Function(OrderDirection orderDirection, String? query)?
        changeDirection,
    TResult? Function()? toggleSearchField,
  }) {
    return loadNotes?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder, String? query)? changeOrder,
    TResult Function(OrderDirection orderDirection, String? query)?
        changeDirection,
    TResult Function()? toggleSearchField,
    required TResult orElse(),
  }) {
    if (loadNotes != null) {
      return loadNotes(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
    required TResult Function(ChangeDirection value) changeDirection,
    required TResult Function(ToggleSearchField value) toggleSearchField,
  }) {
    return loadNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotes value)? loadNotes,
    TResult? Function(DeleteNote value)? deleteNote,
    TResult? Function(RestoreNote value)? restoreNote,
    TResult? Function(ChangeOrder value)? changeOrder,
    TResult? Function(ChangeDirection value)? changeDirection,
    TResult? Function(ToggleSearchField value)? toggleSearchField,
  }) {
    return loadNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ChangeDirection value)? changeDirection,
    TResult Function(ToggleSearchField value)? toggleSearchField,
    required TResult orElse(),
  }) {
    if (loadNotes != null) {
      return loadNotes(this);
    }
    return orElse();
  }
}

abstract class LoadNotes implements NotesEvent {
  const factory LoadNotes({final String? query}) = _$LoadNotesImpl;

  String? get query;
  @JsonKey(ignore: true)
  _$$LoadNotesImplCopyWith<_$LoadNotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteNoteImplCopyWith<$Res> {
  factory _$$DeleteNoteImplCopyWith(
          _$DeleteNoteImpl value, $Res Function(_$DeleteNoteImpl) then) =
      __$$DeleteNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$DeleteNoteImplCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$DeleteNoteImpl>
    implements _$$DeleteNoteImplCopyWith<$Res> {
  __$$DeleteNoteImplCopyWithImpl(
      _$DeleteNoteImpl _value, $Res Function(_$DeleteNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$DeleteNoteImpl(
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$DeleteNoteImpl implements DeleteNote {
  const _$DeleteNoteImpl(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'NotesEvent.deleteNote(note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNoteImpl &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNoteImplCopyWith<_$DeleteNoteImpl> get copyWith =>
      __$$DeleteNoteImplCopyWithImpl<_$DeleteNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) loadNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder noteOrder, String? query) changeOrder,
    required TResult Function(OrderDirection orderDirection, String? query)
        changeDirection,
    required TResult Function() toggleSearchField,
  }) {
    return deleteNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? loadNotes,
    TResult? Function(Note note)? deleteNote,
    TResult? Function()? restoreNote,
    TResult? Function(NoteOrder noteOrder, String? query)? changeOrder,
    TResult? Function(OrderDirection orderDirection, String? query)?
        changeDirection,
    TResult? Function()? toggleSearchField,
  }) {
    return deleteNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder, String? query)? changeOrder,
    TResult Function(OrderDirection orderDirection, String? query)?
        changeDirection,
    TResult Function()? toggleSearchField,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
    required TResult Function(ChangeDirection value) changeDirection,
    required TResult Function(ToggleSearchField value) toggleSearchField,
  }) {
    return deleteNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotes value)? loadNotes,
    TResult? Function(DeleteNote value)? deleteNote,
    TResult? Function(RestoreNote value)? restoreNote,
    TResult? Function(ChangeOrder value)? changeOrder,
    TResult? Function(ChangeDirection value)? changeDirection,
    TResult? Function(ToggleSearchField value)? toggleSearchField,
  }) {
    return deleteNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ChangeDirection value)? changeDirection,
    TResult Function(ToggleSearchField value)? toggleSearchField,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(this);
    }
    return orElse();
  }
}

abstract class DeleteNote implements NotesEvent {
  const factory DeleteNote(final Note note) = _$DeleteNoteImpl;

  Note get note;
  @JsonKey(ignore: true)
  _$$DeleteNoteImplCopyWith<_$DeleteNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestoreNoteImplCopyWith<$Res> {
  factory _$$RestoreNoteImplCopyWith(
          _$RestoreNoteImpl value, $Res Function(_$RestoreNoteImpl) then) =
      __$$RestoreNoteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestoreNoteImplCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$RestoreNoteImpl>
    implements _$$RestoreNoteImplCopyWith<$Res> {
  __$$RestoreNoteImplCopyWithImpl(
      _$RestoreNoteImpl _value, $Res Function(_$RestoreNoteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RestoreNoteImpl implements RestoreNote {
  const _$RestoreNoteImpl();

  @override
  String toString() {
    return 'NotesEvent.restoreNote()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RestoreNoteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) loadNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder noteOrder, String? query) changeOrder,
    required TResult Function(OrderDirection orderDirection, String? query)
        changeDirection,
    required TResult Function() toggleSearchField,
  }) {
    return restoreNote();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? loadNotes,
    TResult? Function(Note note)? deleteNote,
    TResult? Function()? restoreNote,
    TResult? Function(NoteOrder noteOrder, String? query)? changeOrder,
    TResult? Function(OrderDirection orderDirection, String? query)?
        changeDirection,
    TResult? Function()? toggleSearchField,
  }) {
    return restoreNote?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder, String? query)? changeOrder,
    TResult Function(OrderDirection orderDirection, String? query)?
        changeDirection,
    TResult Function()? toggleSearchField,
    required TResult orElse(),
  }) {
    if (restoreNote != null) {
      return restoreNote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
    required TResult Function(ChangeDirection value) changeDirection,
    required TResult Function(ToggleSearchField value) toggleSearchField,
  }) {
    return restoreNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotes value)? loadNotes,
    TResult? Function(DeleteNote value)? deleteNote,
    TResult? Function(RestoreNote value)? restoreNote,
    TResult? Function(ChangeOrder value)? changeOrder,
    TResult? Function(ChangeDirection value)? changeDirection,
    TResult? Function(ToggleSearchField value)? toggleSearchField,
  }) {
    return restoreNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ChangeDirection value)? changeDirection,
    TResult Function(ToggleSearchField value)? toggleSearchField,
    required TResult orElse(),
  }) {
    if (restoreNote != null) {
      return restoreNote(this);
    }
    return orElse();
  }
}

abstract class RestoreNote implements NotesEvent {
  const factory RestoreNote() = _$RestoreNoteImpl;
}

/// @nodoc
abstract class _$$ChangeOrderImplCopyWith<$Res> {
  factory _$$ChangeOrderImplCopyWith(
          _$ChangeOrderImpl value, $Res Function(_$ChangeOrderImpl) then) =
      __$$ChangeOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteOrder noteOrder, String? query});
}

/// @nodoc
class __$$ChangeOrderImplCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$ChangeOrderImpl>
    implements _$$ChangeOrderImplCopyWith<$Res> {
  __$$ChangeOrderImplCopyWithImpl(
      _$ChangeOrderImpl _value, $Res Function(_$ChangeOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteOrder = null,
    Object? query = freezed,
  }) {
    return _then(_$ChangeOrderImpl(
      null == noteOrder
          ? _value.noteOrder
          : noteOrder // ignore: cast_nullable_to_non_nullable
              as NoteOrder,
      freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeOrderImpl implements ChangeOrder {
  const _$ChangeOrderImpl(this.noteOrder, this.query);

  @override
  final NoteOrder noteOrder;
  @override
  final String? query;

  @override
  String toString() {
    return 'NotesEvent.changeOrder(noteOrder: $noteOrder, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeOrderImpl &&
            (identical(other.noteOrder, noteOrder) ||
                other.noteOrder == noteOrder) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteOrder, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeOrderImplCopyWith<_$ChangeOrderImpl> get copyWith =>
      __$$ChangeOrderImplCopyWithImpl<_$ChangeOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) loadNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder noteOrder, String? query) changeOrder,
    required TResult Function(OrderDirection orderDirection, String? query)
        changeDirection,
    required TResult Function() toggleSearchField,
  }) {
    return changeOrder(noteOrder, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? loadNotes,
    TResult? Function(Note note)? deleteNote,
    TResult? Function()? restoreNote,
    TResult? Function(NoteOrder noteOrder, String? query)? changeOrder,
    TResult? Function(OrderDirection orderDirection, String? query)?
        changeDirection,
    TResult? Function()? toggleSearchField,
  }) {
    return changeOrder?.call(noteOrder, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder, String? query)? changeOrder,
    TResult Function(OrderDirection orderDirection, String? query)?
        changeDirection,
    TResult Function()? toggleSearchField,
    required TResult orElse(),
  }) {
    if (changeOrder != null) {
      return changeOrder(noteOrder, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
    required TResult Function(ChangeDirection value) changeDirection,
    required TResult Function(ToggleSearchField value) toggleSearchField,
  }) {
    return changeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotes value)? loadNotes,
    TResult? Function(DeleteNote value)? deleteNote,
    TResult? Function(RestoreNote value)? restoreNote,
    TResult? Function(ChangeOrder value)? changeOrder,
    TResult? Function(ChangeDirection value)? changeDirection,
    TResult? Function(ToggleSearchField value)? toggleSearchField,
  }) {
    return changeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ChangeDirection value)? changeDirection,
    TResult Function(ToggleSearchField value)? toggleSearchField,
    required TResult orElse(),
  }) {
    if (changeOrder != null) {
      return changeOrder(this);
    }
    return orElse();
  }
}

abstract class ChangeOrder implements NotesEvent {
  const factory ChangeOrder(final NoteOrder noteOrder, final String? query) =
      _$ChangeOrderImpl;

  NoteOrder get noteOrder;
  String? get query;
  @JsonKey(ignore: true)
  _$$ChangeOrderImplCopyWith<_$ChangeOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeDirectionImplCopyWith<$Res> {
  factory _$$ChangeDirectionImplCopyWith(_$ChangeDirectionImpl value,
          $Res Function(_$ChangeDirectionImpl) then) =
      __$$ChangeDirectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderDirection orderDirection, String? query});
}

/// @nodoc
class __$$ChangeDirectionImplCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$ChangeDirectionImpl>
    implements _$$ChangeDirectionImplCopyWith<$Res> {
  __$$ChangeDirectionImplCopyWithImpl(
      _$ChangeDirectionImpl _value, $Res Function(_$ChangeDirectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDirection = null,
    Object? query = freezed,
  }) {
    return _then(_$ChangeDirectionImpl(
      null == orderDirection
          ? _value.orderDirection
          : orderDirection // ignore: cast_nullable_to_non_nullable
              as OrderDirection,
      freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeDirectionImpl implements ChangeDirection {
  const _$ChangeDirectionImpl(this.orderDirection, this.query);

  @override
  final OrderDirection orderDirection;
  @override
  final String? query;

  @override
  String toString() {
    return 'NotesEvent.changeDirection(orderDirection: $orderDirection, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDirectionImpl &&
            (identical(other.orderDirection, orderDirection) ||
                other.orderDirection == orderDirection) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderDirection, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDirectionImplCopyWith<_$ChangeDirectionImpl> get copyWith =>
      __$$ChangeDirectionImplCopyWithImpl<_$ChangeDirectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) loadNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder noteOrder, String? query) changeOrder,
    required TResult Function(OrderDirection orderDirection, String? query)
        changeDirection,
    required TResult Function() toggleSearchField,
  }) {
    return changeDirection(orderDirection, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? loadNotes,
    TResult? Function(Note note)? deleteNote,
    TResult? Function()? restoreNote,
    TResult? Function(NoteOrder noteOrder, String? query)? changeOrder,
    TResult? Function(OrderDirection orderDirection, String? query)?
        changeDirection,
    TResult? Function()? toggleSearchField,
  }) {
    return changeDirection?.call(orderDirection, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder, String? query)? changeOrder,
    TResult Function(OrderDirection orderDirection, String? query)?
        changeDirection,
    TResult Function()? toggleSearchField,
    required TResult orElse(),
  }) {
    if (changeDirection != null) {
      return changeDirection(orderDirection, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
    required TResult Function(ChangeDirection value) changeDirection,
    required TResult Function(ToggleSearchField value) toggleSearchField,
  }) {
    return changeDirection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotes value)? loadNotes,
    TResult? Function(DeleteNote value)? deleteNote,
    TResult? Function(RestoreNote value)? restoreNote,
    TResult? Function(ChangeOrder value)? changeOrder,
    TResult? Function(ChangeDirection value)? changeDirection,
    TResult? Function(ToggleSearchField value)? toggleSearchField,
  }) {
    return changeDirection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ChangeDirection value)? changeDirection,
    TResult Function(ToggleSearchField value)? toggleSearchField,
    required TResult orElse(),
  }) {
    if (changeDirection != null) {
      return changeDirection(this);
    }
    return orElse();
  }
}

abstract class ChangeDirection implements NotesEvent {
  const factory ChangeDirection(
          final OrderDirection orderDirection, final String? query) =
      _$ChangeDirectionImpl;

  OrderDirection get orderDirection;
  String? get query;
  @JsonKey(ignore: true)
  _$$ChangeDirectionImplCopyWith<_$ChangeDirectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleSearchFieldImplCopyWith<$Res> {
  factory _$$ToggleSearchFieldImplCopyWith(_$ToggleSearchFieldImpl value,
          $Res Function(_$ToggleSearchFieldImpl) then) =
      __$$ToggleSearchFieldImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleSearchFieldImplCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$ToggleSearchFieldImpl>
    implements _$$ToggleSearchFieldImplCopyWith<$Res> {
  __$$ToggleSearchFieldImplCopyWithImpl(_$ToggleSearchFieldImpl _value,
      $Res Function(_$ToggleSearchFieldImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleSearchFieldImpl implements ToggleSearchField {
  const _$ToggleSearchFieldImpl();

  @override
  String toString() {
    return 'NotesEvent.toggleSearchField()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleSearchFieldImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) loadNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder noteOrder, String? query) changeOrder,
    required TResult Function(OrderDirection orderDirection, String? query)
        changeDirection,
    required TResult Function() toggleSearchField,
  }) {
    return toggleSearchField();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? loadNotes,
    TResult? Function(Note note)? deleteNote,
    TResult? Function()? restoreNote,
    TResult? Function(NoteOrder noteOrder, String? query)? changeOrder,
    TResult? Function(OrderDirection orderDirection, String? query)?
        changeDirection,
    TResult? Function()? toggleSearchField,
  }) {
    return toggleSearchField?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder, String? query)? changeOrder,
    TResult Function(OrderDirection orderDirection, String? query)?
        changeDirection,
    TResult Function()? toggleSearchField,
    required TResult orElse(),
  }) {
    if (toggleSearchField != null) {
      return toggleSearchField();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
    required TResult Function(ChangeDirection value) changeDirection,
    required TResult Function(ToggleSearchField value) toggleSearchField,
  }) {
    return toggleSearchField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotes value)? loadNotes,
    TResult? Function(DeleteNote value)? deleteNote,
    TResult? Function(RestoreNote value)? restoreNote,
    TResult? Function(ChangeOrder value)? changeOrder,
    TResult? Function(ChangeDirection value)? changeDirection,
    TResult? Function(ToggleSearchField value)? toggleSearchField,
  }) {
    return toggleSearchField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ChangeDirection value)? changeDirection,
    TResult Function(ToggleSearchField value)? toggleSearchField,
    required TResult orElse(),
  }) {
    if (toggleSearchField != null) {
      return toggleSearchField(this);
    }
    return orElse();
  }
}

abstract class ToggleSearchField implements NotesEvent {
  const factory ToggleSearchField() = _$ToggleSearchFieldImpl;
}
