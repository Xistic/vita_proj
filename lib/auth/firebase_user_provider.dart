import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class VitprojFirebaseUser {
  VitprojFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

VitprojFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<VitprojFirebaseUser> vitprojFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<VitprojFirebaseUser>(
        (user) => currentUser = VitprojFirebaseUser(user));
