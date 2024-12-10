// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteStateImpl _$$NoteStateImplFromJson(Map<String, dynamic> json) =>
    _$NoteStateImpl(
      notes: (json['notes'] as List<dynamic>?)
              ?.map((e) => Note.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NoteStateImplToJson(_$NoteStateImpl instance) =>
    <String, dynamic>{
      'notes': instance.notes,
    };
