import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gallery/models/user_model.dart';
import 'package:gallery/screens/detail_screen.dart';
import 'package:gallery/screens/image_screen.dart';

class LiveScreen extends StatefulWidget {
  final String? userId;
  const LiveScreen({Key? key, this.userId}) : super(key: key);

  @override
  _LiveScreenState createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
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
        title: const Text("Your Gallery"),
      ),
      body: Center(
        child: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("users")
              .doc(widget.userId)
              .collection("images")
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (BuildContext context, int index) {
                  if (!snapshot.data!.docs.length.isNaN) {
                    String url = snapshot.data!.docs[index]['downloadURL'];
                    Image bigPics =
                        Image.network(url, height: 400, fit: BoxFit.cover);
                    return Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return DetailScreen(
                              urlImage: url,
                              currentImage: bigPics,
                            );
                          }));
                        },
                        child: Hero(tag: url, child: bigPics),
                      ),
                    );
                  } else {
                    return Dismissible(
                        key: Key(snapshot.data!.docs[index]['downloadURL']),
                        child: const Text(""));
                  }
                },
              );
            } else {
              return (const Center(
                child: Text(
                  ("No image uploaded"),
                ),
              ));
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ImageScreen(
                userId: loggedInUser.uid,
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
