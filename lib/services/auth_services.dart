import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth;
  AuthService(this._auth);

  Stream<User?> get authStateChanges => _auth.idTokenChanges();
  Future login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return 'Logged In';
    } catch (e) {
      return e.toString();
    }
  }

  Future signUp(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return 'Signed up';
    } catch (e) {
      return e;
    }
  }

  Future deleteUser(String email) async {
    try {
      await _auth.currentUser!.delete();
    } catch (e) {
      return e.toString();
    }
  }

  Future updateUserEmail(String email, String Password) async {
    try {
      await _auth.currentUser!.updateEmail(email);
    } catch (e) {
      return e.toString();
    }
  }
}
