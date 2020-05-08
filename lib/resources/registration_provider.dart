import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

register(value) async {
  await _auth.verifyPhoneNumber(
      phoneNumber: "+254" + value.toString(),
      timeout: Duration(seconds: 5),
      verificationCompleted: (authCredential) =>
          _verificationCompleted(authCredential),
      verificationFailed: (authException) => _verificationFailed(authException),
      codeSent: (verificationId, [code]) =>
          _smsCodeSent(verificationId, [code]),
      codeAutoRetrievalTimeout: (verificationId) =>
          _codeAutoRetrievalTimeout(verificationId));
}

_verificationCompleted(AuthCredential authCredential) {
  _auth
      .signInWithCredential(authCredential)
      .then((value) => {print("UUID is" + value.user.uid)});
}

_verificationFailed(AuthException authException) {
  print("Failed" + authException.message.toString());
}

_codeAutoRetrievalTimeout(verificationId) {
  print(verificationId);
}

_smsCodeSent(String verificationId, List<int> code) {
  // set the verification code so that we can use it to log the user in
  print(verificationId);
}
