import 'package:firebase_auth/firebase_auth.dart';

Future<bool> verifyUserWithEmailAndPassword(
    String email, String password) async {
  try {
    // Sign in the user with email and password
    final UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    // If sign-in is successful, return true
    return userCredential.user != null;
  } catch (e) {
    // Handle any sign-in errors
    print('Sign-in error: $e');
    return false;
  }
}
