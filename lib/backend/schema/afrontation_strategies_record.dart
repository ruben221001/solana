import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AfrontationStrategiesRecord extends FirestoreRecord {
  AfrontationStrategiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "afrontationUser" field.
  DocumentReference? _afrontationUser;
  DocumentReference? get afrontationUser => _afrontationUser;
  bool hasAfrontationUser() => _afrontationUser != null;

  // "chosenStrategies" field.
  List<String>? _chosenStrategies;
  List<String> get chosenStrategies => _chosenStrategies ?? const [];
  bool hasChosenStrategies() => _chosenStrategies != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _afrontationUser = snapshotData['afrontationUser'] as DocumentReference?;
    _chosenStrategies = getDataList(snapshotData['chosenStrategies']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('afrontationStrategies')
          : FirebaseFirestore.instance.collectionGroup('afrontationStrategies');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('afrontationStrategies').doc();

  static Stream<AfrontationStrategiesRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => AfrontationStrategiesRecord.fromSnapshot(s));

  static Future<AfrontationStrategiesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AfrontationStrategiesRecord.fromSnapshot(s));

  static AfrontationStrategiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AfrontationStrategiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AfrontationStrategiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AfrontationStrategiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AfrontationStrategiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AfrontationStrategiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAfrontationStrategiesRecordData({
  DocumentReference? afrontationUser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'afrontationUser': afrontationUser,
    }.withoutNulls,
  );

  return firestoreData;
}

class AfrontationStrategiesRecordDocumentEquality
    implements Equality<AfrontationStrategiesRecord> {
  const AfrontationStrategiesRecordDocumentEquality();

  @override
  bool equals(
      AfrontationStrategiesRecord? e1, AfrontationStrategiesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.afrontationUser == e2?.afrontationUser &&
        listEquality.equals(e1?.chosenStrategies, e2?.chosenStrategies);
  }

  @override
  int hash(AfrontationStrategiesRecord? e) =>
      const ListEquality().hash([e?.afrontationUser, e?.chosenStrategies]);

  @override
  bool isValidKey(Object? o) => o is AfrontationStrategiesRecord;
}
