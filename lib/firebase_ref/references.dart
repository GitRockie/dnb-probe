import 'package:cloud_firestore/cloud_firestore.dart';

final fireStrore = FirebaseFirestore.instance;

final userRF = fireStrore.collection('users');
final recordsRF = fireStrore.collection('records');

DocumentReference recordRF({
  required String recordId,
  required String data,
}) =>
    recordsRF.doc(recordId).collection('records').doc(data);
