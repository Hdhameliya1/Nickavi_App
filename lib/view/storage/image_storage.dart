import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StorageImage extends StatefulWidget {
  const StorageImage({Key? key}) : super(key: key);

  @override
  State<StorageImage> createState() => _StorageImageState();
}

class _StorageImageState extends State<StorageImage> {
  final FirebaseStorage storage = FirebaseStorage.instance;

  var product = "assets/images/product.png";
  var producttwo = "assets/images/producttwo.png";
  var electronics = "assets/images/Electronics.png";
  var electronicstwo = "assets/images/Electronicstwo.png";
  var electronicsthree = "assets/images/Electronicsthree.png";

  productImage() async {
    try {
      ByteData bytes = await rootBundle.load(product);
      Reference ref = storage.ref();
      Reference dataString = ref.child(product);
      Uint8List rawData =
          bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
      await dataString.putData(rawData);
    } on FirebaseException catch (e) {
      debugPrint(e.toString());
    }
  }

  electronicsImage() async {
    try {
      ByteData bytes = await rootBundle.load(electronics);
      Reference ref = storage.ref();
      Reference dataString = ref.child(electronics);
      Uint8List rawData =
          bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
      await dataString.putData(rawData);
    } on FirebaseException catch (e) {
      debugPrint(e.toString());
    }
  }

  electronicsTwoImage() async {
    try {
      ByteData bytes = await rootBundle.load(electronicstwo);
      Reference ref = storage.ref();
      Reference dataString = ref.child(electronicstwo);
      Uint8List rawData =
          bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
      await dataString.putData(rawData);
    } on FirebaseException catch (e) {
      debugPrint(e.toString());
    }
  }

  electronicsThreeImage() async {
    try {
      ByteData bytes = await rootBundle.load(electronicsthree);
      Reference ref = storage.ref();
      Reference dataString = ref.child(electronicsthree);
      Uint8List rawData =
          bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
      await dataString.putData(rawData);
    } on FirebaseException catch (e) {
      debugPrint(e.toString());
    }
  }

  producttwoImage() async {
    try {
      ByteData bytes = await rootBundle.load(producttwo);
      Reference ref = storage.ref();
      Reference dataString = ref.child(producttwo);
      Uint8List rawData =
          bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
      await dataString.putData(rawData);
    } on FirebaseException catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Storage Image"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              style: const ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              onPressed: () {
                productImage();
              },
              child: const Text('Press for Data 1')),
          ElevatedButton(
              style: const ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              onPressed: () {
                producttwoImage();
              },
              child: const Text('Press for Data 2')),
          ElevatedButton(
              style: const ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              onPressed: () {
                electronicsImage();
              },
              child: const Text('Press for Data 3')),
          ElevatedButton(
              style: const ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              onPressed: () {
                electronicsTwoImage();
              },
              child: const Text('Press for Data 4')),
          ElevatedButton(
              style: const ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              onPressed: () {
                electronicsThreeImage();
              },
              child: const Text('Press for Data 5')),
        ],
      ),
    );
  }
}
