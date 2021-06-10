import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MessageService {
  static String _collection = "messages";
  static final _firestore = FirebaseFirestore.instance;

  static Future sendMessage({
    @required String message,
    @required String senderId,
    @required String userName,
  }) async {
    await _firestore.collection(_collection).add({
      'senderId': senderId,
      'userName': userName,
      'message': message,
      'time': DateTime.now(),
    });
  }

  static Stream<QuerySnapshot> messageStream() {
    return _firestore
        .collection(_collection)
        .orderBy('time', descending: true)
        .snapshots();
  }
}
