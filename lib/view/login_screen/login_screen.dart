import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController useridController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCF4F4),
      body: Column(
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
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Image.asset(
            "assets/images/nikovired.png",
          ),
          Padding(
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.7),
            child: const Text(
              "User Id",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
          ),
            TextFormField(controller:useridController,
              decoration: InputDecoration(border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black,style: BorderStyle.solid,width: 2),
              )),
            ),
        ],
      ),
    );
  }
}
