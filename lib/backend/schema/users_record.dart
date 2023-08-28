import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "user_lastname" field.
  String? _userLastname;
  String get userLastname => _userLastname ?? '';
  bool hasUserLastname() => _userLastname != null;

  // "birth_date" field.
  DateTime? _birthDate;
  DateTime? get birthDate => _birthDate;
  bool hasBirthDate() => _birthDate != null;

  // "birth_place" field.
  String? _birthPlace;
  String get birthPlace => _birthPlace ?? '';
  bool hasBirthPlace() => _birthPlace != null;

  // "type_user" field.
  String? _typeUser;
  String get typeUser => _typeUser ?? '';
  bool hasTypeUser() => _typeUser != null;

  // "user_gender" field.
  String? _userGender;
  String get userGender => _userGender ?? '';
  bool hasUserGender() => _userGender != null;

  // "qlist1" field.
  List<String>? _qlist1;
  List<String> get qlist1 => _qlist1 ?? const [];
  bool hasQlist1() => _qlist1 != null;

  // "qschoice1" field.
  String? _qschoice1;
  String get qschoice1 => _qschoice1 ?? '';
  bool hasQschoice1() => _qschoice1 != null;

  // "qlist2" field.
  List<String>? _qlist2;
  List<String> get qlist2 => _qlist2 ?? const [];
  bool hasQlist2() => _qlist2 != null;

  // "following" field.
  List<DocumentReference>? _following;
  List<DocumentReference> get following => _following ?? const [];
  bool hasFollowing() => _following != null;

  // "user_ChosenStrategies" field.
  List<String>? _userChosenStrategies;
  List<String> get userChosenStrategies => _userChosenStrategies ?? const [];
  bool hasUserChosenStrategies() => _userChosenStrategies != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _userLastname = snapshotData['user_lastname'] as String?;
    _birthDate = snapshotData['birth_date'] as DateTime?;
    _birthPlace = snapshotData['birth_place'] as String?;
    _typeUser = snapshotData['type_user'] as String?;
    _userGender = snapshotData['user_gender'] as String?;
    _qlist1 = getDataList(snapshotData['qlist1']);
    _qschoice1 = snapshotData['qschoice1'] as String?;
    _qlist2 = getDataList(snapshotData['qlist2']);
    _following = getDataList(snapshotData['following']);
    _userChosenStrategies = getDataList(snapshotData['user_ChosenStrategies']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? userName,
  String? userLastname,
  DateTime? birthDate,
  String? birthPlace,
  String? typeUser,
  String? userGender,
  String? qschoice1,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'user_name': userName,
      'user_lastname': userLastname,
      'birth_date': birthDate,
      'birth_place': birthPlace,
      'type_user': typeUser,
      'user_gender': userGender,
      'qschoice1': qschoice1,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userName == e2?.userName &&
        e1?.userLastname == e2?.userLastname &&
        e1?.birthDate == e2?.birthDate &&
        e1?.birthPlace == e2?.birthPlace &&
        e1?.typeUser == e2?.typeUser &&
        e1?.userGender == e2?.userGender &&
        listEquality.equals(e1?.qlist1, e2?.qlist1) &&
        e1?.qschoice1 == e2?.qschoice1 &&
        listEquality.equals(e1?.qlist2, e2?.qlist2) &&
        listEquality.equals(e1?.following, e2?.following) &&
        listEquality.equals(e1?.userChosenStrategies, e2?.userChosenStrategies);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.userName,
        e?.userLastname,
        e?.birthDate,
        e?.birthPlace,
        e?.typeUser,
        e?.userGender,
        e?.qlist1,
        e?.qschoice1,
        e?.qlist2,
        e?.following,
        e?.userChosenStrategies
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
