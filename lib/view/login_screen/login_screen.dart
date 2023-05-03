import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../res/common/button_common.dart';
import '../../res/common/textfeild_common.dart';
import '../../res/constant/nikavi_strings.dart';
import '../signup/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  User? userCredential;
  User? user;
  dynamic value;

  @override
  void initState() {
    user = FirebaseAuth.instance.currentUser;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCF4F4),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              color: const Color(0xFFF6485A),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const CloseButton(
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.02),
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Image.asset(
              "assets/images/nikovired.png",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            TextFieldCommon(
              controller: emailController,
              text: NikaviString.email,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            TextFieldCommon(
              controller: passwordController,
              text: NikaviString.password,
              obscureText: true,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.045,
              width: MediaQuery.of(context).size.width * 0.9,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xFFF6485A),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: const Text(
                NikaviString.login,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.006,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 235),
              child: Text(
                NikaviString.forgot,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05),
              child: Row(
                children: [
                  Container(
                    height: 3,
                    width: 150,
                    margin: const EdgeInsets.only(right: 15),
                    color: const Color(0x4D000000),
                  ),
                  const Text(
                    NikaviString.or,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 150,
                    margin: const EdgeInsets.only(left: 15),
                    color: const Color(0x4D000000),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            const ButtonCommon(
              text: NikaviString.app,
              image: NikaviString.apple,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const ButtonCommon(
              text: NikaviString.face,
              image: NikaviString.facebook,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            GestureDetector(
              onTap: googleSignin,
              child: const ButtonCommon(
                text: NikaviString.gog,
                image: NikaviString.google,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.06,
                  left: MediaQuery.of(context).size.width * 0.05),
              child: Row(
                children: [
                  const Text(
                    NikaviString.used,
                    style: TextStyle(
                      color: Color(0xFF453536),
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      NikaviString.signup,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xFF453536),
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showToastMessage(message) {
    return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      // timeInSecForIosWeb: 1,
      backgroundColor: Colors.black45,
      textColor: Colors.black26,
      fontSize: 16.0,
    );
  }

  bool validator() {
    if (emailController.text.isEmpty) {
      showToastMessage("Please enter email");
      return false;
    } else if (!RegExp(
            r"^[a-zA-Z0-9,a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailController.text)) {
      showToastMessage("Please enter valid email");
      return false;
    } else if (passwordController.text.isEmpty) {
      showToastMessage("Please enter password");
      return false;
    } else if (!RegExp(
            "^(?=.*[A-Z].*[A-Z])(?=.*[!@#\$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}")
        .hasMatch(passwordController.text)) {
      showToastMessage("Please enter valid password");
      return false;
    } else {
      return false;
    }
  }

  userSignup() async {
    try {
      await firebaseAuth
          .createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      )
          .then((value) {
        debugPrint("User Data --> ${value.user}");
        userCredential = value.user;
        value.user!.sendEmailVerification();
        setState(() {});
      });
    } on FirebaseAuthException catch (error) {
      showToastMessage(error.message);
      showToastMessage(error.code);
    }
  }

  googleSignin() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
