import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          InkWell(
            onTap: null,
            child: Hero(
              tag: widget.urlImage!,
              child: Image.network(
                widget.urlImage!,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 48, 8, 0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  children: <Widget>[
                    MaterialButton(
                      padding: const EdgeInsets.all(0),
                      onPressed: () {
                        backToLive();
                      },
                      child: Row(
                        children: <Widget>[
                          Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              SizedBox(
                                child: SvgPicture.string(
                                  _svg_blackCircle,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    child: SvgPicture.string(
                                      _svg_leftArrow,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    MaterialButton(
                      padding: const EdgeInsets.all(0),
                      onPressed: () {
                        deleteImage(widget.urlImage!);
                      },
                      child: Row(
                        children: <Widget>[
                          Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              SizedBox(
                                child: SvgPicture.string(
                                  _svg_blackCircle,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    child: const Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
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

  _initialDesign() {
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
          child: Image.network(
            widget.urlImage!,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
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

  _topBar() {
    return Stack(
      children: [
        Row(
          children: <Widget>[
            MaterialButton(
              padding: const EdgeInsets.all(0),
              onPressed: null,
              child: Row(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      SizedBox(
                        child: SvgPicture.string(
                          _svg_blackCircle,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: SvgPicture.string(
                              _svg_leftArrow,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            MaterialButton(
              padding: const EdgeInsets.all(0),
              onPressed: null,
              child: Row(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      SizedBox(
                        child: SvgPicture.string(
                          _svg_blackCircle,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: const Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
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

const String _svg_leftArrow =
    '<svg viewBox="0.0 0.0 12.8 10.6" ><path transform="translate(0.0, -41.67)" d="M 12.06915855407715 45.98217391967773 L 12.08912086486816 45.98653793334961 L 3.531917572021484 45.98653793334961 L 6.221989154815674 43.29044342041016 C 6.353716850280762 43.15881729125977 6.42597484588623 42.98050689697266 6.42597484588623 42.79335403442383 C 6.42597484588623 42.60620880126953 6.35371732711792 42.42914581298828 6.221989154815674 42.29720306396484 L 5.803413391113281 41.8784065246582 C 5.671789646148682 41.74677276611328 5.496395587921143 41.67399597167969 5.309357166290283 41.67399597167969 C 5.122213363647461 41.67399597167969 4.946715831756592 41.74625396728516 4.81509256362915 41.87788391113281 L 0.2037925720214844 46.48892974853516 C 0.07164859771728516 46.62107849121094 -0.0006084442138671875 46.79710388183594 -8.869171142578125e-05 46.98435211181641 C -0.0006084442138671875 47.17264938354492 0.07164859771728516 47.34877777099609 0.2037925720214844 47.48071670532227 L 4.81509256362915 52.09217834472656 C 4.946714878082275 52.22370147705078 5.122109889984131 52.29606628417969 5.309357166290283 52.29606628417969 C 5.496395587921143 52.29606628417969 5.671789646148682 52.22359848022461 5.803413391113281 52.09217834472656 L 6.221989154815674 51.67337799072266 C 6.353716850280762 51.54196166992188 6.42597484588623 51.366455078125 6.42597484588623 51.17930603027344 C 6.42597484588623 50.99225997924805 6.35371732711792 50.82601165771484 6.221989154815674 50.69448852539062 L 3.501558303833008 47.98331451416016 L 12.0787239074707 47.98331451416016 C 12.46413421630859 47.98331451416016 12.78799438476562 47.65112686157227 12.78799438476562 47.26591110229492 L 12.78799438476562 46.673583984375 C 12.78799438476562 46.28836822509766 12.45456886291504 45.98217391967773 12.06915855407715 45.98217391967773 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_blackCircle =
    '<svg viewBox="26.0 36.0 42.0 42.0" ><path transform="translate(26.0, 36.0)" d="M 21 0 C 32.59798049926758 0 42 9.402020454406738 42 21 C 42 32.59798049926758 32.59798049926758 42 21 42 C 9.402020454406738 42 0 32.59798049926758 0 21 C 0 9.402020454406738 9.402020454406738 0 21 0 Z" fill="#000000" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
