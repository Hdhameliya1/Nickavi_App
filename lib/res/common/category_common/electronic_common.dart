import 'package:flutter/material.dart';

import '../../constant/nikavi_strings.dart';

class ElectronicCommon extends StatelessWidget {
  final String? image;
  final String? text;
  final String? price;
  const ElectronicCommon({Key? key, this.image, this.text, this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: const BoxDecoration(
                  color: Color(0xFFF6485A),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                    left: MediaQuery.of(context).size.width * 0.034),
                child: Image.asset(image!),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01,
                    left: MediaQuery.of(context).size.width * 0.02),
                child: Image.asset(NikaviString.heart),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
                left: MediaQuery.of(context).size.width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text!,
                  style: const TextStyle(
                    color: Color(0xFF453536),
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Text(
                  price!,
                  style: const TextStyle(
                    color: Color(0xFF453536),
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(NikaviString.star),
                    const Text(
                      NikaviString.review,
                      style: TextStyle(
                        color: Color(0xFF3A3A3A),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.025,
                      width: MediaQuery.of(context).size.width * 0.2,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color(0xFFEAF8EC),
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                      child: const Text(
                        NikaviString.pick,
                        style: TextStyle(
                          color: Color(0xFF2FA090),
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
