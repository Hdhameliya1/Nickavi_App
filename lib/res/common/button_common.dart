import 'package:flutter/material.dart';

class ButtonCommon extends StatelessWidget {
  final String? image;
  final String? text;
  const ButtonCommon({Key? key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.045,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: const BoxDecoration(
        color: Color(0xFFF6485A),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.06,
          ),
          Image.asset(image!),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.14,
          ),
          Text(
            text!,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
