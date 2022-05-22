// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChildRecord> _$childRecordSerializer = new _$ChildRecordSerializer();

class _$ChildRecordSerializer implements StructuredSerializer<ChildRecord> {
  @override
  final Iterable<Type> types = const [ChildRecord, _$ChildRecord];
  @override
  final String wireName = 'ChildRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ChildRecord object,
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
    value = object.room;
    if (value != null) {
      result
        ..add('room')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.legion;
    if (value != null) {
      result
        ..add('legion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sex;
    if (value != null) {
      result
        ..add('sex')
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
  ChildRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChildRecordBuilder();

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
        case 'room':
          result.room = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'legion':
          result.legion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sex':
          result.sex = serializers.deserialize(value,
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

class _$ChildRecord extends ChildRecord {
  @override
  final String name;
  @override
  final String room;
  @override
  final int total;
  @override
  final String legion;
  @override
  final String sex;
  @override
  final DocumentReference<Object> reference;

  factory _$ChildRecord([void Function(ChildRecordBuilder) updates]) =>
      (new ChildRecordBuilder()..update(updates)).build();

  _$ChildRecord._(
      {this.name, this.room, this.total, this.legion, this.sex, this.reference})
      : super._();

  @override
  ChildRecord rebuild(void Function(ChildRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChildRecordBuilder toBuilder() => new ChildRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChildRecord &&
        name == other.name &&
        room == other.room &&
        total == other.total &&
        legion == other.legion &&
        sex == other.sex &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, name.hashCode), room.hashCode), total.hashCode),
                legion.hashCode),
            sex.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChildRecord')
          ..add('name', name)
          ..add('room', room)
          ..add('total', total)
          ..add('legion', legion)
          ..add('sex', sex)
          ..add('reference', reference))
        .toString();
  }
}

class ChildRecordBuilder implements Builder<ChildRecord, ChildRecordBuilder> {
  _$ChildRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _room;
  String get room => _$this._room;
  set room(String room) => _$this._room = room;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  String _legion;
  String get legion => _$this._legion;
  set legion(String legion) => _$this._legion = legion;

  String _sex;
  String get sex => _$this._sex;
  set sex(String sex) => _$this._sex = sex;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ChildRecordBuilder() {
    ChildRecord._initializeBuilder(this);
  }

  ChildRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _room = $v.room;
      _total = $v.total;
      _legion = $v.legion;
      _sex = $v.sex;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChildRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChildRecord;
  }

  @override
  void update(void Function(ChildRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChildRecord build() {
    final _$result = _$v ??
        new _$ChildRecord._(
            name: name,
            room: room,
            total: total,
            legion: legion,
            sex: sex,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
