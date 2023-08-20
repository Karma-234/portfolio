import 'package:firebase_auth/firebase_auth.dart';
import 'package:portfolio/model/login.dart';

class AppAuthenticationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String?> signUp(
      {required String email, required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.code;
    }
  }

  Future<String?> login(
      {required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.code;
    }
  }
}
