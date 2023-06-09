import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitch_clone/models/livestream.dart';
import 'package:twitch_clone/provider/user_provider.dart';
import 'package:twitch_clone/resources/storage_methods.dart';
import 'package:twitch_clone/utils/utils.dart';

class FirestoreMethods {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  final StorageMethods _storageMethods = StorageMethods();

  Future<String> startLiveStream(
      BuildContext context, String title, Uint8List? image) async {
    final user = Provider.of<UserProvider>(context, listen: false);
    String channelId = '';
    try {
      if (title.isNotEmpty && image != null) {
        if (!(await _firebaseFirestore
                .collection('livestream')
                .doc(user.user.uid)
                .get())
            .exists) {
          String thumbnailUrl = await _storageMethods.uploadImageToStorage(
            "livestream-thumbnails",
            image,
            user.user.uid,
          );

          channelId = user.user.uid + user.user.username.trim();

          LiveStream liveStream = LiveStream(
            title: title,
            image: thumbnailUrl,
            uid: user.user.uid,
            username: user.user.username,
            viewers: 0,
            channelId: channelId,
            startedAt: DateTime.now(),
          );

          //save to firestore
          _firebaseFirestore.collection('livestream').doc(channelId).set(
                liveStream.toMap(),
              );
          print('Stream started');
        } else {
          showSnackBar(context, 'Multiple Streams can not happen!');
        }

        //upload image to firebase
      } else {
        showSnackBar(
          context,
          'Please enter all required fields',
        );
      }
    } on FirebaseException catch (e) {
      showSnackBar(context, e.message!);
    }
    return channelId;
  }
}
