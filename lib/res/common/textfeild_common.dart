import 'package:flutter/material.dart';

class TextFieldCommon extends StatelessWidget {
  final TextEditingController? controller;
  final String? text;
  final bool? obscureText;

  const TextFieldCommon(
      {Key? key, this.controller, this.text, this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text!,
          textAlign: TextAlign.right,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.003,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.04,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(3),
            ),
          ),
          child: TextFormField(
            controller: controller!,
            obscureText: obscureText ?? false,
            cursorColor: const Color(0xFFF6485A),
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color(0xFFF6485A),
              )),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.black, style: BorderStyle.solid, width: 2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
