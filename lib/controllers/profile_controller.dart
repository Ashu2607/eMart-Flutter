import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emart/consts/consts.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class ProfileController extends GetxController {
  var profileImagePath = ''.obs;
  var profileImageLink = '';
  var isLoading = false.obs;

  // text controller
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  // change image
  changeImage({context}) async {
    try {
      final image = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 70);
      if (image == null) return;
      profileImagePath.value = image.path;
    } on PlatformException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }

  // upload profile image
  uploadProfileImage() async {
    var filename = basename(profileImagePath.value);
    var destination = 'images/${currentUser!.uid}/$filename';
    Reference ref = FirebaseStorage.instance.ref().child(destination);
    await ref.putFile(File(profileImagePath.value));
    profileImageLink = await ref.getDownloadURL();
  }

  // update profile

  updateProfile() async {
    var store = firestore.collection(usersCollections).doc(currentUser!.uid);
    await store.set({
      'name': nameController.text,
      'password': passController.text,
      'imageUrl': profileImageLink.text,
    }, SetOptions(merge: true));
    isLoading(false);
  }
}
