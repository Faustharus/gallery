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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 40, 25, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Align(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Bonjour, ${loggedInUser.fullName} 👋",
                          style: const TextStyle(
                            fontFamily: 'Sofia Pro',
                            fontSize: 14,
                            color: Colors.grey,
                            height: 1.125,
                          ),
                          textHeightBehavior: const TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          softWrap: false,
                        ),
                        const Text(
                          "Fil d'Actualités",
                          style: TextStyle(
                            fontFamily: 'Averia Sans Libre',
                            fontSize: 20,
                            color: Color(0xff02132b),
                            letterSpacing: -0.48,
                            fontWeight: FontWeight.w600,
                            height: 0.9166666666666666,
                            fontStyle: FontStyle.italic,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          softWrap: false,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).pop(context);
                    },
                    child: _buildImage(),
                  ),
                ],
              ),
              const Divider(),
              const Text(
                "Récents",
                style: TextStyle(
                  fontFamily: 'Averia Sans Libre',
                  fontSize: 15,
                  color: Color(0xff02132b),
                  fontWeight: FontWeight.w600,
                  height: 1.4666666666666666,
                  fontStyle: FontStyle.italic,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                softWrap: false,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 135,
                  child: Stack(
                    children: <Widget>[
                      StreamBuilder(
                        stream: FirebaseFirestore.instance
                            .collection("users")
                            .doc(widget.userId)
                            .collection("images")
                            .snapshots(),
                        builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.hasData) {
                            return ListView.builder(
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (BuildContext context, int index) {
                                if (!snapshot.data!.docs.length.isNaN) {
                                  String url =
                                      snapshot.data!.docs[index]['downloadURL'];
                                  Image bigPics = Image.network(
                                    url,
                                    height: 400,
                                    width: 400,
                                    fit: BoxFit.cover,
                                  );
                                  return Material(
                                    child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (_) {
                                                return DetailScreen(
                                                    urlImage: url,
                                                    currentImage: bigPics,
                                                    idImage: snapshot
                                                        .data!.docs[index].id);
                                              }));
                                            },
                                            child:
                                                Hero(tag: url, child: bigPics),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6, 0, 0, 12),
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Container(
                                                  width: 37.39,
                                                  height: 37.39,
                                                  decoration:
                                                      const BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/Residence.png'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.elliptical(
                                                          9999.0, 9999.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 0, 8, 0),
                                                        child: Text(
                                                          "${loggedInUser.fullName}",
                                                          style:
                                                              const TextStyle(
                                                            fontFamily:
                                                                'Sofia Pro',
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xffffffff),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 1.125,
                                                          ),
                                                          textHeightBehavior:
                                                              const TextHeightBehavior(
                                                                  applyHeightToFirstAscent:
                                                                      false),
                                                          softWrap: false,
                                                        ),
                                                      ),
                                                      const Text(
                                                        "22 min",
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Sofia Pro',
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xff88888b),
                                                          height:
                                                              1.5454545454545454,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const Text(
                                                    "Un superbe lieu",
                                                    style: TextStyle(
                                                      fontFamily: 'Sofia Pro',
                                                      fontSize: 12,
                                                      color: Color(0xff88888b),
                                                      height:
                                                          1.5454545454545454,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                                return const Text("N/A");
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
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          child: _plusButton(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Container(
              //     child: _plusButton(),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  _buildImage() {
    return Container(
      width: 42.39,
      height: 42.39,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Residence.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.elliptical(9999.0, 9999.0),
        ),
      ),
    );
  }

  _coreCenter() {
    return Center(
      child: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection("users")
            .doc(widget.userId)
            .collection("images")
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
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
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return DetailScreen(
                              urlImage: url,
                              currentImage: bigPics,
                              idImage: snapshot.data!.docs[index].id);
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
    );
  }

  _plusButton() {
    return FloatingActionButton(
      backgroundColor: Colors.white,
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
      child: const Icon(
        Icons.add,
        color: Colors.black,
        size: 30,
      ),
    );
  }
}
