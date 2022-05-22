import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'parent_record.g.dart';

abstract class ParentRecord
    implements Built<ParentRecord, ParentRecordBuilder> {
  static Serializer<ParentRecord> get serializer => _$parentRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get child;

  @nullable
  String get reviwe;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ParentRecordBuilder builder) => builder
    ..name = ''
    ..child = ''
    ..reviwe = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('parent');

  static Stream<ParentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ParentRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ParentRecord._();
  factory ParentRecord([void Function(ParentRecordBuilder) updates]) =
      _$ParentRecord;

  static ParentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createParentRecordData({
  String name,
  String child,
  String reviwe,
}) =>
    serializers.toFirestore(
        ParentRecord.serializer,
        ParentRecord((p) => p
          ..name = name
          ..child = child
          ..reviwe = reviwe));
