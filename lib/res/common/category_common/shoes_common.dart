import 'package:flutter/material.dart';

import '../../constant/nikavi_strings.dart';

class ShoesScreen extends StatelessWidget {
  const ShoesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Stack(
        children: [
          Image.asset(NikaviString.product),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.01,
                left: MediaQuery.of(context).size.width * 0.02),
            child: Image.asset(NikaviString.heart),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.17,
                left: MediaQuery.of(context).size.width * 0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  NikaviString.nike,
                  style: TextStyle(
                    color: Color(0xFF453536),
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  NikaviString.price,
                  style: TextStyle(
                    color: Color(0xFF453536),
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                const Text(
                  NikaviString.sit,
                  style: TextStyle(
                    color: Color(0xB3000000),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
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
                    const Text(
                      NikaviString.category,
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
