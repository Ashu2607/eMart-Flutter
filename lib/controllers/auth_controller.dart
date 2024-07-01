import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emart/consts/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;

  // login method
  Future<UserCredential?> loginMethod({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    UserCredential? userCredential;
    try {
      userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.message ?? "An error occurred");
    }
    return userCredential;
  }

  // signup method
  Future<UserCredential?> signupMethod({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    UserCredential? userCredential;
    try {
      userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.message ?? "An error occurred");
    }
    return userCredential;
  }

  // store user data
  Future<void> storeUserdata({
    required String name,
    required String email,
  }) async {
    DocumentReference store =
        firestore.collection(usersCollection).doc(currentUser!.uid);
    await store.set({
      'name': name,
      'email': email,
      'imageUrl': '',
      'id': currentUser!.uid,
      'cart_count': '00',
      'order_count': '00',
      'wishlist_count': '00',
    });
  }

  // signout
  Future<void> signoutMethod({required BuildContext context}) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}
