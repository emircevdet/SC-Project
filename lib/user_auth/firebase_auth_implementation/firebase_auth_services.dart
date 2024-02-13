import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(String email, String password) async{

    try {
      UserCredential credential = auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }

  }
}