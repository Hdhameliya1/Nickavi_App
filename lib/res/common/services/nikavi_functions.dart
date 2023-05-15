import 'package:cloud_firestore/cloud_firestore.dart';

class ProductService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference productReference =
      FirebaseFirestore.instance.collection('product');
  CollectionReference categoryReference =
      FirebaseFirestore.instance.collection('product two');

// UserService userService =  UserService();
// List subCategoryList = List();
}
