import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

//login
  Future<UserCredential?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      print("Login Successful");
      return userCredential;
    } on FirebaseAuthException catch (e) {
      print("Error: ${e.message}"); // Log the error for debugging
      return null; // Return null instead of throwing an exception
    }
  }

  //signup
  Future<UserCredential> signUpWithEmailAndPassword(
      String email, password) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      print("Signup Successful");
      return userCredential;
    } on FirebaseAuthException catch (e) {
      print("Error: ${e.message}");
      throw Exception(e.code); // Log the error for debugging
    }
  }

  //logout
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
