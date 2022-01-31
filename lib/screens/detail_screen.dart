import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:gallery/models/user_model.dart';

class DetailScreen extends StatefulWidget {
  final String? userId;
  final String? urlImage;
  final Image? currentImage;
  const DetailScreen({Key? key, this.userId, this.urlImage, this.currentImage})
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
        title: Text("${loggedInUser.firstName}"),
      ),
      body: StreamBuilder(
          stream: getImage(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    String url = snapshot.data!.docs[index]['downloadURL'];
                    Image bigPics =
                        Image.network(url, height: 200, fit: BoxFit.cover);
                    return Material(
                      child: InkWell(
                        onTap: null,
                        child: Hero(tag: url, child: bigPics),
                      ),
                    );
                  });
            } else {
              return (const Center(
                child: Text("No Image detected"),
              ));
            }
          }),
    );
  }

  getImage() {
    FirebaseFirestore.instance
        .collection("users")
        .doc(widget.userId)
        .collection("images")
        .snapshots();
    /*const postID = String;
    Reference ref = FirebaseStorage.instance
        .ref()
        .child("${widget.userId}/images")
        .child("post_$postID");
    await ref.getData();*/
  }
}
