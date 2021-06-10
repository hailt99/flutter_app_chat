import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  static final _auth = FirebaseAuth.instance;

  static Future<User> signIn({String email, String password}) async {
    final resul = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return resul.user;
  }

  static Future<User> currentUser() async {
    return await _auth.currentUser;
  }

  static Future<void> signOut() async {
    await _auth.signOut();
  }

  static Future signUp({
    @required String email,
    @required String displayName,
    @required String password,
  }) async {
    final result = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    final user = result.user;
    await user.updateProfile(displayName: displayName);

    return user;
  }
}
