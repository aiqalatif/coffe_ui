import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class GoogleButton extends StatefulWidget {
  const GoogleButton({super.key});

  @override
  State<GoogleButton> createState() => _GoogleButtonState();
}

class _GoogleButtonState extends State<GoogleButton> {
  Future<void> signInWithGoogle() async {
    // try {
    //   final GoogleSignIn googleSignIn = GoogleSignIn(); // ✅ Make sure this comes from google_sign_in.dart
    //   final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    //   if (googleUser == null) return;

    //   final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    //   final OAuthCredential credential = GoogleAuthProvider.credential(
    //     accessToken: googleAuth.accessToken,
    //     idToken: googleAuth.idToken,
    //   );

    //   await FirebaseAuth.instance.signInWithCredential(credential);

    //   if (!context.mounted) return;
    //   Navigator.of(context).pushNamedAndRemoveUntil('homepage', (route) => false);
    // } catch (e) {
    //   print("Google Sign-In Error: $e");
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: signInWithGoogle,
      height: 40,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.red[700],
      textColor: Colors.white,
      child: const Text('Login with Google'),
    );
  }
}
