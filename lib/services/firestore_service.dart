import 'package:emart/consts/consts.dart';

class FirestoreService {
  // get users data
  static getUser(uid) => firestore
      .collection(usersCollections)
      .where('id', isEqualTo: uid)
      .snapshots();
}
