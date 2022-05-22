// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teamlead_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamleadRecord> _$teamleadRecordSerializer =
    new _$TeamleadRecordSerializer();

class _$TeamleadRecordSerializer
    implements StructuredSerializer<TeamleadRecord> {
  @override
  final Iterable<Type> types = const [TeamleadRecord, _$TeamleadRecord];
  @override
  final String wireName = 'TeamleadRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, TeamleadRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.legion;
    if (value != null) {
      result
        ..add('legion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  TeamleadRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamleadRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'legion':
          result.legion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$TeamleadRecord extends TeamleadRecord {
  @override
  final String name;
  @override
  final String legion;
  @override
  final DocumentReference<Object> reference;

  factory _$TeamleadRecord([void Function(TeamleadRecordBuilder) updates]) =>
      (new TeamleadRecordBuilder()..update(updates)).build();

  _$TeamleadRecord._({this.name, this.legion, this.reference}) : super._();

  @override
  TeamleadRecord rebuild(void Function(TeamleadRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamleadRecordBuilder toBuilder() =>
      new TeamleadRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamleadRecord &&
        name == other.name &&
        legion == other.legion &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), legion.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamleadRecord')
          ..add('name', name)
          ..add('legion', legion)
          ..add('reference', reference))
        .toString();
  }
}

class TeamleadRecordBuilder
    implements Builder<TeamleadRecord, TeamleadRecordBuilder> {
  _$TeamleadRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _legion;
  String get legion => _$this._legion;
  set legion(String legion) => _$this._legion = legion;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TeamleadRecordBuilder() {
    TeamleadRecord._initializeBuilder(this);
  }

  TeamleadRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _legion = $v.legion;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamleadRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamleadRecord;
  }

  @override
  void update(void Function(TeamleadRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamleadRecord build() {
    final _$result = _$v ??
        new _$TeamleadRecord._(
            name: name, legion: legion, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
