import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ImageScreen extends StatefulWidget {
  final String? userId;
  final String? pictureId;
  const ImageScreen({Key? key, this.userId, this.pictureId}) : super(key: key);

  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  File? _image;
  final imagePicker = ImagePicker();
  String? downloadURL;

  Future imagePicked() async {
    final picked = await imagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (picked != null) {
        _image = File(picked.path);
      } else {
        showSnackBar(
          "No file selected",
          const Duration(milliseconds: 400),
        );
      }
    });
  }

  /* Uploading the image, then getting the download url & the adding the DL URL
  to our CloudFirestore */
  Future uploadImage() async {
    final postID = DateTime.now().microsecondsSinceEpoch.toString();
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    Reference ref = FirebaseStorage.instance
        .ref()
        .child("${widget.userId}/images")
        .child("post_$postID");
    await ref.putFile(_image!);
    downloadURL = await ref.getDownloadURL();

    /* Uploading to Cloud Firestore */
    await firebaseFirestore
        .collection("users")
        .doc(widget.userId)
        .collection("images")
        .add({"downloadURL": downloadURL}).whenComplete(
      () => showSnackBar(
        "Image Uploaded Successfully",
        const Duration(seconds: 2),
      ),
    );
  }

  // Showing error through snackbars
  showSnackBar(String snackText, Duration d) {
    final snackBar = SnackBar(
      content: Text(snackText),
      duration: d,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upload Image"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: SizedBox(
              height: 500,
              width: double.infinity,
              child: Column(
                children: [
                  const Text("Upload Image"),
                  const SizedBox(height: 10),
                  Expanded(
                    flex: 4,
                    child: Container(
                      width: 550,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: _image == null
                                  ? const Center(
                                      child: Text("No image selected..."),
                                    )
                                  : Image.file(_image!),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                imagePicked();
                              },
                              child: const Text("Select Image"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                if (_image != null) {
                                  uploadImage();
                                } else {
                                  showSnackBar(
                                    "Select an Image",
                                    const Duration(milliseconds: 400),
                                  );
                                }
                              },
                              child: const Text("Upload Image"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
