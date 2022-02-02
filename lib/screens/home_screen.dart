import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gallery/models/user_model.dart';
import 'package:gallery/screens/live_screen.dart';
import 'package:gallery/screens/login_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      appBar: _appBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
                child: Stack(
                  children: [
                    _buildImage(),
                    Positioned(
                      bottom: 0,
                      right: 4,
                      child: _buildEditIcon(Colors.blue),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Text(
                "${loggedInUser.fullName}",
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                "${loggedInUser.email}",
                style: const TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 100),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Social Network",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              launch('https://www.whatsapp.com');
                            },
                            icon: const Icon(
                              FontAwesomeIcons.whatsapp,
                              color: Color(0xFF00d856),
                            ),
                          ),
                          const Text("Connection to Whatsapp"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              launch('https://fr-fr.facebook.com');
                            },
                            icon: const Icon(
                              FontAwesomeIcons.facebook,
                              color: Color(0xFF0075fc),
                            ),
                          ),
                          const Text("Connection to Facebook"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              launch('https://twitter.com');
                            },
                            icon: const Icon(
                              FontAwesomeIcons.twitter,
                              color: Color(0xFF1da1f2),
                            ),
                          ),
                          const Text("Connection to Twitter"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          ShaderMask(
                            blendMode: BlendMode.srcATop,
                            shaderCallback: (bounds) => const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xFF515BD4),
                                  Color(0xFF8134AF),
                                  Color(0xFFDD2A7B),
                                  Color(0xFFF58529),
                                  Color(0xFFFFCA73)
                                ]).createShader(bounds),
                            child: IconButton(
                              onPressed: () async {
                                final url = 'https://www.instagram.com';
                                if (await canLaunch(url)) {
                                  await launch(url,
                                      forceSafariVC: true, forceWebView: true);
                                }
                              },
                              icon: const Icon(FontAwesomeIcons.instagram),
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          const Text("Connection to Instagram")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  _buildImage() {
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Image.asset("assets/Residence.png",
            fit: BoxFit.cover, width: 128, height: 128),
      ),
    );
  }

  _buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: color,
          all: 8,
          child: const Icon(Icons.edit, color: Colors.white, size: 20),
        ),
      );

  _appBar() {
    final appBarHeight = AppBar().preferredSize.height;
    return PreferredSize(
      child: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.photo_library, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LiveScreen(
                  userId: loggedInUser.uid,
                ),
              ),
            );
          },
        ),
        title: const Text("Profile"),
        actions: [
          IconButton(
            onPressed: () {
              logout(context);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      preferredSize: Size.fromHeight(appBarHeight),
    );
  }

  Widget buildCircle(
          {required Color color, required double all, required Widget child}) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
