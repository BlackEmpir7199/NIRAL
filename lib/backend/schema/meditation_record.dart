import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class MeditationRecord extends FirestoreRecord {
  MeditationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "MedAudio" field.
  String? _medAudio;
  String get medAudio => _medAudio ?? '';
  bool hasMedAudio() => _medAudio != null;

  void _initializeFields() {
    _medAudio = snapshotData['MedAudio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Meditation');

  static Stream<MeditationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MeditationRecord.fromSnapshot(s));

  static Future<MeditationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MeditationRecord.fromSnapshot(s));

  static MeditationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MeditationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MeditationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MeditationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MeditationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MeditationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMeditationRecordData({
  String? medAudio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'MedAudio': medAudio,
    }.withoutNulls,
  );

  return firestoreData;
}

class MeditationRecordDocumentEquality implements Equality<MeditationRecord> {
  const MeditationRecordDocumentEquality();

  @override
  bool equals(MeditationRecord? e1, MeditationRecord? e2) {
    return e1?.medAudio == e2?.medAudio;
  }

  @override
  int hash(MeditationRecord? e) => const ListEquality().hash([e?.medAudio]);

  @override
  bool isValidKey(Object? o) => o is MeditationRecord;
}
