import 'package:firebase_auth/firebase_auth.dart';

class Firebaseauthservice {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Future<User?> Signupwithemailandpassword(
      String Email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: Email, password: password);
      return credential.user;
    } catch (e) {
      print("error");
    }
    return null;
  }
  Future<User?> Signinwithemailandpassword(
      String Email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: Email, password: password);
      return credential.user;
    } catch (e) {
      print("error");
    }
    return null;
  }
}



