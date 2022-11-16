import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ProfileUpdateFunctions {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final FirebaseStorage _storage = FirebaseStorage.instance;

  static Future<void> updateUserProfile(
      Map<String, dynamic> userDetails) async {
    try {
      await _firestore
          .collection("users")
          .doc(_auth.currentUser!.uid)
          .update(userDetails);

      print("User Deatails Updated Successfully");
    } catch (e) {
      print(e);
    }
  }

  static Future<String?> uploadImage(File imageFile, String imageName) async {
    try {
      final reference = _storage.ref().child("images/$imageName.png");

      final uploadTask = reference.putFile(imageFile);

      String downloadUrl = await reference.getDownloadURL();

      return downloadUrl;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
