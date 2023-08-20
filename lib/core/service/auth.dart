import 'package:firebase_auth/firebase_auth.dart';
import 'package:portfolio/model/login.dart';

class AppAuthenticationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  signUp({required String email, required String password}) {
    try {
      _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  login(LoginPayload payload) {
    try {
      _auth.signInWithEmailAndPassword(
          email: payload.email, password: payload.password);
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
