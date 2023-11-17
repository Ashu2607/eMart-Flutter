import 'package:emart/consts/consts.dart';

class FirestoreService {
  // get users data
  static getUser(uid) => firestore
      .collection(usersCollection)
      .where('id', isEqualTo: uid)
      .snapshots();

  // get products according category
  static getProducts(category) => firestore
      .collection(productsCollection)
      .where('p_category', isEqualTo: category)
      .snapshots();

  // get cart
  static getCart(uid) => firestore
      .collection(cartCollection)
      .where('added_by', isEqualTo: uid)
      .snapshots();

  // delete cart document from databse
  static deleteCartDocument(docId) =>
      firestore.collection(cartCollection).doc(docId).delete();
}
