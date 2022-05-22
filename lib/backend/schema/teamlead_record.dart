import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'teamlead_record.g.dart';

abstract class TeamleadRecord
    implements Built<TeamleadRecord, TeamleadRecordBuilder> {
  static Serializer<TeamleadRecord> get serializer =>
      _$teamleadRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get legion;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TeamleadRecordBuilder builder) => builder
    ..name = ''
    ..legion = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('teamlead');

  static Stream<TeamleadRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TeamleadRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TeamleadRecord._();
  factory TeamleadRecord([void Function(TeamleadRecordBuilder) updates]) =
      _$TeamleadRecord;

  static TeamleadRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTeamleadRecordData({
  String name,
  String legion,
}) =>
    serializers.toFirestore(
        TeamleadRecord.serializer,
        TeamleadRecord((t) => t
          ..name = name
          ..legion = legion));
