import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gallery/models/user_model.dart';

class DetailScreen extends StatefulWidget {
  final String? userId;
  final String? urlImage;
  final String? idImage;
  final Image? currentImage;
  const DetailScreen(
      {Key? key, this.userId, this.urlImage, this.idImage, this.currentImage})
      : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) => {
              loggedInUser = UserModel.fromMap(value.data()),
              setState(() {}),
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "/images/${widget.idImage}",
          overflow: TextOverflow.visible,
        ),
      ),
      body: InkWell(
        onTap: null,
        child: Hero(
          tag: widget.urlImage!,
          child: Image.network(widget.urlImage!, fit: BoxFit.cover),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          deleteImage(widget.urlImage!);
          backToLive();
        },
        child: const Icon(
          FontAwesomeIcons.trash,
        ),
      ),
    );
  }

  backToLive() {
    Navigator.pop(context);
  }

  Future<void> deleteImage(String url) async {
    if (widget.urlImage != null) {
      Reference ref = await FirebaseStorage.instance.refFromURL(url);
      await ref.delete();
      print("Deleting Successfull");
      print("users/${user!.uid}/images/${widget.idImage}");
    } else {
      print("Error");
    }
    await FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .collection("images")
        .doc(widget.idImage)
        .delete();
  }
}
