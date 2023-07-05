import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TarefasRecord extends FirestoreRecord {
  TarefasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "userid" field.
  DocumentReference? _userid;
  DocumentReference? get userid => _userid;
  bool hasUserid() => _userid != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _status = snapshotData['status'] as String?;
    _userid = snapshotData['userid'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Tarefas')
          : FirebaseFirestore.instance.collectionGroup('Tarefas');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Tarefas').doc();

  static Stream<TarefasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TarefasRecord.fromSnapshot(s));

  static Future<TarefasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TarefasRecord.fromSnapshot(s));

  static TarefasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TarefasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TarefasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TarefasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TarefasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TarefasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTarefasRecordData({
  String? titulo,
  String? status,
  DocumentReference? userid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'status': status,
      'userid': userid,
    }.withoutNulls,
  );

  return firestoreData;
}

class TarefasRecordDocumentEquality implements Equality<TarefasRecord> {
  const TarefasRecordDocumentEquality();

  @override
  bool equals(TarefasRecord? e1, TarefasRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.status == e2?.status &&
        e1?.userid == e2?.userid;
  }

  @override
  int hash(TarefasRecord? e) =>
      const ListEquality().hash([e?.titulo, e?.status, e?.userid]);

  @override
  bool isValidKey(Object? o) => o is TarefasRecord;
}
