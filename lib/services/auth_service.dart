import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // ประกาศตัวเเปล FirebaseAuth

  // ประกาฟังก์ชันไว้ลงทะเบียน
  static Future<void> registerUser(String _email, String _password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _email,
        password: _password,
      );
    } on FirebaseAuthException catch (e) {
      print(e.code);
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}

  // ประกาศฟังก์ชันไว้หน้า login
