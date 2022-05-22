// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ParentRecord> _$parentRecordSerializer =
    new _$ParentRecordSerializer();

class _$ParentRecordSerializer implements StructuredSerializer<ParentRecord> {
  @override
  final Iterable<Type> types = const [ParentRecord, _$ParentRecord];
  @override
  final String wireName = 'ParentRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ParentRecord object,
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
    value = object.child;
    if (value != null) {
      result
        ..add('child')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reviwe;
    if (value != null) {
      result
        ..add('reviwe')
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
  ParentRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParentRecordBuilder();

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
        case 'child':
          result.child = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reviwe':
          result.reviwe = serializers.deserialize(value,
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

class _$ParentRecord extends ParentRecord {
  @override
  final String name;
  @override
  final String child;
  @override
  final String reviwe;
  @override
  final DocumentReference<Object> reference;

  factory _$ParentRecord([void Function(ParentRecordBuilder) updates]) =>
      (new ParentRecordBuilder()..update(updates)).build();

  _$ParentRecord._({this.name, this.child, this.reviwe, this.reference})
      : super._();

  @override
  ParentRecord rebuild(void Function(ParentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParentRecordBuilder toBuilder() => new ParentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParentRecord &&
        name == other.name &&
        child == other.child &&
        reviwe == other.reviwe &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), child.hashCode), reviwe.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParentRecord')
          ..add('name', name)
          ..add('child', child)
          ..add('reviwe', reviwe)
          ..add('reference', reference))
        .toString();
  }
}

class ParentRecordBuilder
    implements Builder<ParentRecord, ParentRecordBuilder> {
  _$ParentRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _child;
  String get child => _$this._child;
  set child(String child) => _$this._child = child;

  String _reviwe;
  String get reviwe => _$this._reviwe;
  set reviwe(String reviwe) => _$this._reviwe = reviwe;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ParentRecordBuilder() {
    ParentRecord._initializeBuilder(this);
  }

  ParentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _child = $v.child;
      _reviwe = $v.reviwe;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParentRecord;
  }

  @override
  void update(void Function(ParentRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParentRecord build() {
    final _$result = _$v ??
        new _$ParentRecord._(
            name: name, child: child, reviwe: reviwe, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
