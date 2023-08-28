import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "creator" field.
  DocumentReference? _creator;
  DocumentReference? get creator => _creator;
  bool hasCreator() => _creator != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "lastMessage" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  bool hasLastMessage() => _lastMessage != null;

  // "social_Message" field.
  String? _socialMessage;
  String get socialMessage => _socialMessage ?? '';
  bool hasSocialMessage() => _socialMessage != null;

  // "social_SenderID" field.
  String? _socialSenderID;
  String get socialSenderID => _socialSenderID ?? '';
  bool hasSocialSenderID() => _socialSenderID != null;

  // "social_RecieverID" field.
  String? _socialRecieverID;
  String get socialRecieverID => _socialRecieverID ?? '';
  bool hasSocialRecieverID() => _socialRecieverID != null;

  // "social_ArrayConversations" field.
  List<String>? _socialArrayConversations;
  List<String> get socialArrayConversations =>
      _socialArrayConversations ?? const [];
  bool hasSocialArrayConversations() => _socialArrayConversations != null;

  // "social_Time" field.
  DateTime? _socialTime;
  DateTime? get socialTime => _socialTime;
  bool hasSocialTime() => _socialTime != null;

  // "social_chatID" field.
  String? _socialChatID;
  String get socialChatID => _socialChatID ?? '';
  bool hasSocialChatID() => _socialChatID != null;

  // "social_userName" field.
  DocumentReference? _socialUserName;
  DocumentReference? get socialUserName => _socialUserName;
  bool hasSocialUserName() => _socialUserName != null;

  void _initializeFields() {
    _creator = snapshotData['creator'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _lastMessage = snapshotData['lastMessage'] as String?;
    _socialMessage = snapshotData['social_Message'] as String?;
    _socialSenderID = snapshotData['social_SenderID'] as String?;
    _socialRecieverID = snapshotData['social_RecieverID'] as String?;
    _socialArrayConversations =
        getDataList(snapshotData['social_ArrayConversations']);
    _socialTime = snapshotData['social_Time'] as DateTime?;
    _socialChatID = snapshotData['social_chatID'] as String?;
    _socialUserName = snapshotData['social_userName'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  DocumentReference? creator,
  DateTime? date,
  String? lastMessage,
  String? socialMessage,
  String? socialSenderID,
  String? socialRecieverID,
  DateTime? socialTime,
  String? socialChatID,
  DocumentReference? socialUserName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'creator': creator,
      'date': date,
      'lastMessage': lastMessage,
      'social_Message': socialMessage,
      'social_SenderID': socialSenderID,
      'social_RecieverID': socialRecieverID,
      'social_Time': socialTime,
      'social_chatID': socialChatID,
      'social_userName': socialUserName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.creator == e2?.creator &&
        e1?.date == e2?.date &&
        e1?.lastMessage == e2?.lastMessage &&
        e1?.socialMessage == e2?.socialMessage &&
        e1?.socialSenderID == e2?.socialSenderID &&
        e1?.socialRecieverID == e2?.socialRecieverID &&
        listEquality.equals(
            e1?.socialArrayConversations, e2?.socialArrayConversations) &&
        e1?.socialTime == e2?.socialTime &&
        e1?.socialChatID == e2?.socialChatID &&
        e1?.socialUserName == e2?.socialUserName;
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.creator,
        e?.date,
        e?.lastMessage,
        e?.socialMessage,
        e?.socialSenderID,
        e?.socialRecieverID,
        e?.socialArrayConversations,
        e?.socialTime,
        e?.socialChatID,
        e?.socialUserName
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
