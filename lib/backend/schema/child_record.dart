import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'child_record.g.dart';

abstract class ChildRecord implements Built<ChildRecord, ChildRecordBuilder> {
  static Serializer<ChildRecord> get serializer => _$childRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get room;

  @nullable
  int get total;

  @nullable
  String get legion;

  @nullable
  String get sex;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ChildRecordBuilder builder) => builder
    ..name = ''
    ..room = ''
    ..total = 0
    ..legion = ''
    ..sex = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('child');

  static Stream<ChildRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ChildRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ChildRecord._();
  factory ChildRecord([void Function(ChildRecordBuilder) updates]) =
      _$ChildRecord;

  static ChildRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createChildRecordData({
  String name,
  String room,
  int total,
  String legion,
  String sex,
}) =>
    serializers.toFirestore(
        ChildRecord.serializer,
        ChildRecord((c) => c
          ..name = name
          ..room = room
          ..total = total
          ..legion = legion
          ..sex = sex));
