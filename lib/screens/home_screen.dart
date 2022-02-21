import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    // Profile Info Button
    final profileButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        width: 319,
        height: 60,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          onPressed: null,
          child: Row(
            children: <Widget>[
              _buildButtonImage(),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "${loggedInUser.fullName}",
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Color(0xff222222),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                    Text(
                      '${loggedInUser.email}',
                      style: const TextStyle(
                        fontFamily: 'Avenir Next',
                        fontSize: 11,
                        color: Color(0xffbbbbbb),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
      ),
    );

    // Security Info Button
    final securityButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        width: 319,
        height: 60,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          onPressed: null,
          child: Row(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  SizedBox(
                    child: SvgPicture.string(
                      _svg_blackBackground,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      SvgPicture.string(
                        _svg_lockSymbol,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                            child: SvgPicture.string(
                              _svg_lockPickSymbol,
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
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Securité",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Color(0xff222222),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                    Text(
                      'Mot de passe, Email...',
                      style: TextStyle(
                        fontFamily: 'Avenir Next',
                        fontSize: 11,
                        color: Color(0xffbbbbbb),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
      ),
    );

    // Notifications Push Button
    final notificationsButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        width: 319,
        height: 60,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          onPressed: null,
          child: Row(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  SizedBox(
                    child: SvgPicture.string(
                      _svg_blackBackground,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                    child: SvgPicture.string(
                      _svg_notifBell,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Notifications Push",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Color(0xff222222),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                    Text(
                      'Activités',
                      style: TextStyle(
                        fontFamily: 'Avenir Next',
                        fontSize: 11,
                        color: Color(0xffbbbbbb),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.centerRight,
                child: CupertinoSwitch(value: true, onChanged: null),
              ),
            ],
          ),
        ),
      ),
    );

    // Help Button
    final helpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        width: 319,
        height: 60,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          onPressed: null,
          child: Row(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  SizedBox(
                    child: SvgPicture.string(
                      _svg_blackBackground,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      SvgPicture.string(
                        _svg_circle,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.string(
                            _svg_questionMark,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                          SvgPicture.string(
                            _svg_dot,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Aide",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Color(0xff222222),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                    Text(
                      'Contactez-nous par email',
                      style: TextStyle(
                        fontFamily: 'Avenir Next',
                        fontSize: 11,
                        color: Color(0xffbbbbbb),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
      ),
    );

    // Share Button
    final shareButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        width: 319,
        height: 60,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          onPressed: null,
          child: Row(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  SizedBox(
                    child: SvgPicture.string(
                      _svg_blackBackground,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                    child: SvgPicture.string(
                      _svg_share,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Partager l'app",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Color(0xff222222),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                    Text(
                      'Soutenez-nous en partageant l\'app',
                      style: TextStyle(
                        fontFamily: 'Avenir Next',
                        fontSize: 11,
                        color: Color(0xffbbbbbb),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
      ),
    );

    // Confidentiality Button
    final confidentialityButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        width: 319,
        height: 60,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          onPressed: null,
          child: Row(
            children: const <Widget>[
              Text(
                "Politique de Confidentialité",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  color: Color(0xff222222),
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
      ),
    );

    // General Terms & Conditions Button
    final generalTermsButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        width: 319,
        height: 60,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          onPressed: null,
          child: Row(
            children: const <Widget>[
              Text(
                "Conditions générales de ventes et\n d'utilisations",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  color: Color(0xff222222),
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
      ),
    );

    // Terms of Use Button
    final termsOfUseButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        width: 319,
        height: 60,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          onPressed: null,
          child: Row(
            children: const <Widget>[
              Text(
                "Mentions légales",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  color: Color(0xff222222),
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
      ),
    );

    // About Button
    final aboutButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        width: 319,
        height: 60,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          onPressed: null,
          child: Row(
            children: const <Widget>[
              Text(
                "À propos",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  color: Color(0xff222222),
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
      ),
    );

    // Facebook Button
    final facebookButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        width: 319,
        height: 60,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          onPressed: () async {
            final url = 'https://fr-fr.facebook.com';
            if (await canLaunch(url)) {
              await launch(url, forceSafariVC: true, forceWebView: true);
            }
          },
          child: Row(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  SizedBox(
                    child: SvgPicture.string(
                      _svg_blueBackground,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                    child: SvgPicture.string(
                      _svg_facebookLogo,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Notre page Facebook",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Color(0xff222222),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
      ),
    );

    // Instagram Button
    final instagramButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        width: 319,
        height: 60,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          onPressed: () async {
            final url = 'https://www.instagram.com';
            if (await canLaunch(url)) {
              await launch(url, forceSafariVC: true, forceWebView: true);
            }
          },
          child: Row(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  SizedBox(
                    child: ClipOval(
                      child: Container(
                        width: 37,
                        height: 37,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(-0.761, 0.761),
                            end: Alignment(0.66, -0.66),
                            colors: [
                              Color(0xfffee411),
                              Color(0xfffedb16),
                              Color(0xfffec125),
                              Color(0xfffe983d),
                              Color(0xfffe5f5e),
                              Color(0xfffe2181),
                              Color(0xff9000dc)
                            ],
                            stops: [0.0, 0.052, 0.138, 0.248, 0.376, 0.5, 1.0],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      SvgPicture.string(
                        _svg_instagramSquare,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.string(
                            _svg_instagramCircle,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(11, 0, 0, 11),
                          child: Container(
                            width: 2.0,
                            height: 2.0,
                            decoration: const BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Notre Instagram",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Color(0xff222222),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
      ),
    );

    // Twitter Button
    final twitterButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        width: 319,
        height: 60,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          onPressed: () async {
            final url = 'https://twitter.com';
            if (await canLaunch(url)) {
              await launch(url, forceSafariVC: true, forceWebView: true);
            }
          },
          child: Row(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  SizedBox(
                    child: SvgPicture.string(
                      _svg_blueLightBackground,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                    child: SvgPicture.string(
                      _svg_twitterLogo,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Notre Twitter",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Color(0xff222222),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
      ),
    );

    // Snapchat Button
    final snapchatButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        width: 319,
        height: 60,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          onPressed: () async {
            final url = 'https://www.snapchat.com';
            if (await canLaunch(url)) {
              await launch(url, forceSafariVC: true, forceWebView: true);
            }
          },
          child: Row(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  SizedBox(
                    child: SvgPicture.string(
                      _svg_yellowBackground,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                    child: SvgPicture.string(
                      _svg_snapchatLogo,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Notre Snapchat",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Color(0xff222222),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              logout(context);
            },
            icon: const Icon(Icons.more_horiz, color: Colors.black),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
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
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100,
                  child: Stack(
                    children: [
                      _buildImage(),
                      Positioned(
                          bottom: -2,
                          left: 30,
                          right: 30,
                          child: _buildEditIcon(Colors.black))
                    ],
                  ),
                ),
                Text(
                  '${loggedInUser.fullName}',
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: Color(0xff02132b),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                Text(
                  '${loggedInUser.email}',
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    color: Color(0xfea7adb5),
                    fontWeight: FontWeight.w500,
                    height: 1.7692307692307692,
                  ),
                  textHeightBehavior:
                      const TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                ),
                const Divider(),
                // Mon Compte
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                        child: Text(
                          "Mon compte",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xff02132b),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: profileButton,
                    ),
                    securityButton,
                  ],
                ),
                // Paramètres
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                        child: Text(
                          "Paramètres",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xff02132b),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: notificationsButton,
                    ),
                  ],
                ),
                // Autres
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                        child: Text(
                          "Autres",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xff02132b),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: helpButton,
                    ),
                    shareButton,
                  ],
                ),
                // Liens
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                        child: Text(
                          "Liens",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xff02132b),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: confidentialityButton,
                    ),
                    generalTermsButton,
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: termsOfUseButton,
                    ),
                    aboutButton,
                  ],
                ),
                // Reseaux Sociaux
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                        child: Text(
                          "Réseaux Sociaux",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xff02132b),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: facebookButton,
                    ),
                    instagramButton,
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: twitterButton,
                    ),
                    snapchatButton,
                  ],
                ),
              ],
            ),
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
    return Container(
      width: 92.0,
      height: 92.0,
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

  _buildButtonImage() {
    return Container(
      width: 37.0,
      height: 37.0,
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

  _buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: color,
          all: 8,
          child: const Icon(Icons.edit, color: Colors.white, size: 10),
        ),
      );

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

const String _svg_instagramCircle =
    '<svg viewBox="15.8 15.8 10.5 10.5" ><path  d="M 21.04888916015625 15.79488945007324 C 18.15466690063477 15.79488945007324 15.79488945007324 18.15466690063477 15.79488945007324 21.04888916015625 C 15.79488945007324 23.94311332702637 18.15466690063477 26.30288887023926 21.04888916015625 26.30288887023926 C 23.94311332702637 26.30288887023926 26.30288887023926 23.9431095123291 26.30288887023926 21.04888916015625 C 26.30288887023926 18.1546688079834 23.9431095123291 15.79488945007324 21.04888916015625 15.79488945007324 Z M 21.04888916015625 24.23911094665527 C 19.28933334350586 24.23911094665527 17.85866737365723 22.80844497680664 17.85866737365723 21.04888725280762 C 17.85866737365723 19.28933143615723 19.28933334350586 17.85866546630859 21.04888916015625 17.85866546630859 C 22.80844688415527 17.85866546630859 24.23911094665527 19.28933143615723 24.23911094665527 21.04888725280762 C 24.23911094665527 22.80844497680664 22.80844497680664 24.23911094665527 21.04888725280762 24.23911094665527 Z" fill="#ffffff" stroke="none" stroke-width="0.08222222328186035" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_blackBackground =
    '<svg viewBox="537.0 562.0 37.0 37.0" ><path transform="translate(537.0, 562.0)" d="M 18.5 0 C 28.71726608276367 0 37 8.282732963562012 37 18.5 C 37 28.71726608276367 28.71726608276367 37 18.5 37 C 8.282732963562012 37 0 28.71726608276367 0 18.5 C 0 8.282732963562012 8.282732963562012 0 18.5 0 Z" fill="#02132b" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lockSymbol =
    '<svg viewBox="6.0 2.0 12.0 16.8" ><path  d="M 16.19039344787598 7.994350433349609 L 16.19039344787598 6.022209167480469 C 16.18709182739258 3.802172660827637 14.38822269439697 2.003301382064819 12.16818618774414 2.000000476837158 L 11.82051467895508 2 C 9.600478172302246 2.003300905227661 7.801606178283691 3.802172899246216 7.798305511474609 6.022208690643311 L 7.798305511474609 7.994350433349609 C 6.805128574371338 7.994350433349609 6 8.799478530883789 6 9.792655944824219 L 6 15.36739921569824 C 6.003300189971924 17.25306510925293 7.531113147735596 18.78087997436523 9.416780471801758 18.78417778015137 L 14.57192039489746 18.78417778015137 C 16.45758628845215 18.78087997436523 17.98540115356445 17.25306510925293 17.98869895935059 15.36739826202393 L 17.98869705200195 9.792654991149902 C 17.98869705200195 8.799477577209473 17.18357086181641 7.994350433349609 16.19039344787598 7.994350433349609 Z M 8.997174263000488 6.022209167480469 C 8.997174263000488 4.462922096252441 10.26122760772705 3.198869705200195 11.82051467895508 3.198869943618774 L 12.16818618774414 3.198869943618774 C 13.72747325897217 3.198869943618774 14.99152374267578 4.462921619415283 14.9915246963501 6.022208690643311 L 14.9915246963501 7.994350433349609 L 8.997174263000488 7.994350433349609 L 8.997174263000488 6.022209167480469 Z M 16.78982925415039 15.36739921569824 C 16.78982925415039 16.59231567382812 15.79683685302734 17.58530807495117 14.57191944122314 17.58530807495117 L 9.416779518127441 17.58530807495117 C 8.191862106323242 17.58530807495117 7.198870182037354 16.59231376647949 7.198870182037354 15.36739826202393 L 7.198870182037354 9.792654991149902 C 7.198870182037354 9.46159553527832 7.467246532440186 9.193219184875488 7.798305511474609 9.193219184875488 L 16.19039344787598 9.193219184875488 C 16.52145195007324 9.193219184875488 16.78982925415039 9.46159553527832 16.78982925415039 9.792654991149902 L 16.78982925415039 15.36739921569824 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lockPickSymbol =
    '<svg viewBox="10.8 11.0 2.4 4.8" ><path transform="translate(-3.2, -6.0)" d="M 15.79823207855225 19.22506904602051 L 15.79823207855225 21.19121742248535 C 15.79823207855225 21.52227592468262 15.52985572814941 21.79065132141113 15.19879722595215 21.79065132141113 C 14.86773872375488 21.79065132141113 14.59936141967773 21.52227592468262 14.59936141967773 21.19121742248535 L 14.59936141967773 19.22506904602051 C 14.12944412231445 18.95376205444336 13.9003381729126 18.40065574645996 14.0407772064209 17.87652969360352 C 14.1812162399292 17.35240173339844 14.65618133544922 16.98794746398926 15.19879722595215 16.98794746398926 C 15.74141216278076 16.98794746398926 16.21637725830078 17.35240173339844 16.3568172454834 17.87652969360352 C 16.49725532531738 18.40065383911133 16.26815032958984 18.95376205444336 15.79823207855225 19.22506904602051 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_chevronDown =
    '<svg viewBox="0.0 97.1 10.5 6.0" ><path transform="translate(0.0, 0.0)" d="M 5.245201110839844 103.119514465332 C 5.057218551635742 103.119514465332 4.869258403778076 103.047737121582 4.725938320159912 102.9044876098633 L 0.2159224897623062 98.39441680908203 C -0.07097344100475311 98.10752868652344 -0.07097344100475311 97.64237213134766 0.2159224897623062 97.3555908203125 C 0.5027023553848267 97.06881713867188 0.9677619338035583 97.06881713867188 1.25468111038208 97.3555908203125 L 5.245201110839844 101.3463439941406 L 9.235745429992676 97.35573577880859 C 9.522641181945801 97.06896209716797 9.987653732299805 97.06896209716797 10.27441024780273 97.35573577880859 C 10.56144618988037 97.64251708984375 10.56144618988037 98.107666015625 10.27441024780273 98.39456176757812 L 5.764464855194092 102.9046249389648 C 5.621074676513672 103.0478973388672 5.433115482330322 103.119514465332 5.245201110839844 103.119514465332 Z" fill="#c3c3c3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_questionMark =
    '<svg viewBox="0.0 0.0 4.8 6.0" ><path transform="translate(-23.54, -19.07)" d="M 25.8880500793457 25.06035995483398 C 25.88623809814453 25.06035995483398 25.88442611694336 25.06035995483398 25.88261413574219 25.06035995483398 C 25.54913711547852 25.05734062194824 25.28090667724609 24.78458023071289 25.28392791748047 24.4507999420166 L 25.28664588928223 24.14873886108398 C 25.28664588928223 24.13151931762695 25.28755187988281 24.11399841308594 25.28936386108398 24.09678268432617 C 25.3730354309082 23.21808433532715 25.95631790161133 22.67950820922852 26.42541885375977 22.24665260314941 C 26.58430480957031 22.09984970092773 26.7347297668457 21.96120452880859 26.86280632019043 21.8165168762207 C 27.01897239685059 21.64041519165039 27.24551773071289 21.27975082397461 27.00719261169434 20.84448051452637 C 26.73261642456055 20.34185028076172 26.06204032897949 20.19957733154297 25.54098320007324 20.31889343261719 C 24.99666595458984 20.4433422088623 24.79609870910645 20.9082145690918 24.72481155395508 21.17403030395508 C 24.6384220123291 21.49633026123047 24.30706024169922 21.68753433227539 23.98476028442383 21.60144805908203 C 23.66246032714844 21.51505661010742 23.47125434875488 21.18369674682617 23.55734062194824 20.86139488220215 C 23.7980842590332 19.96215629577637 24.42274856567383 19.33537673950195 25.27093887329102 19.14115142822266 C 26.41243171691895 18.88047218322754 27.56208038330078 19.34172058105469 28.06682586669922 20.2645206451416 C 28.48699378967285 21.03296661376953 28.37190818786621 21.93462181091309 27.76627349853516 22.61788558959961 C 27.59802627563477 22.80758094787598 27.41829872131348 22.97371482849121 27.24431228637695 23.13410949707031 C 26.81085205078125 23.53434371948242 26.53990173339844 23.80196952819824 26.49398803710938 24.18830871582031 L 26.49157333374023 24.4610710144043 C 26.48915481567383 24.79364013671875 26.21911239624023 25.06035995483398 25.88805198669434 25.06035995483398 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dot =
    '<svg viewBox="0.0 0.0 1.2 1.2" ><path transform="translate(-29.32, -40.94)" d="M 29.92412376403809 42.13267517089844 C 29.76705169677734 42.13267517089844 29.60997772216797 42.06924438476562 29.49821662902832 41.95748138427734 C 29.3834342956543 41.84571838378906 29.31999969482422 41.68864440917969 29.31999969482422 41.5285530090332 C 29.31999969482422 41.37148284912109 29.38343238830566 41.21440887451172 29.49821662902832 41.10264587402344 C 29.72174263000488 40.87911987304688 30.12650680541992 40.87911987304688 30.35003089904785 41.10264587402344 C 30.46481513977051 41.21440887451172 30.52824783325195 41.37148284912109 30.52824783325195 41.5285530090332 C 30.52824783325195 41.68864440917969 30.46481513977051 41.84269714355469 30.35305023193359 41.95748138427734 C 30.23826789855957 42.06924438476562 30.0842170715332 42.13267517089844 29.92412185668945 42.13267517089844 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_circle =
    '<svg viewBox="0.0 0.0 15.7 15.7" ><path transform="translate(-6.0, -6.04)" d="M 13.82953262329102 21.7314453125 C 13.14234161376953 21.7314453125 12.46119117736816 21.64203453063965 11.8048095703125 21.46532821655273 C 8.976301193237305 20.70443344116211 6.761582374572754 18.3613395690918 6.162592887878418 15.49567699432373 C 5.552125930786133 12.576247215271 6.678816795349121 9.507296562194824 9.033390045166016 7.677103042602539 C 10.39448165893555 6.618979454040527 12.1111011505127 6.035999774932861 13.86728858947754 6.035999774932861 C 15.08308982849121 6.035999774932861 16.29043006896973 6.318729400634766 17.35912704467773 6.853077411651611 C 19.99824333190918 8.17339038848877 21.70338439941406 10.9318208694458 21.70338439941406 13.88085269927979 C 21.70338439941406 16.28707885742188 20.56793212890625 18.6063117980957 18.6661491394043 20.08460235595703 C 17.30022430419922 21.14665222167969 15.5823974609375 21.7314453125 13.82953262329102 21.7314453125 Z M 13.86759185791016 7.244248867034912 C 12.37872695922852 7.244248867034912 10.92520523071289 7.736609935760498 9.77525520324707 8.631015777587891 C 7.782551765441895 10.1799898147583 6.828639507293701 12.77742099761963 7.345467567443848 15.24828910827637 C 7.852328300476074 17.67233657836914 9.726018905639648 19.65476989746094 12.11895370483398 20.29846382141113 C 12.67293548583984 20.4473819732666 13.24866676330566 20.5231990814209 13.82953262329102 20.5231990814209 L 13.829833984375 20.5231990814209 C 15.31537437438965 20.5231990814209 16.76950073242188 20.02872276306152 17.92488861083984 19.13069152832031 C 19.53457641601562 17.87955093383789 20.49543571472168 15.91705417633057 20.49543571472168 13.8808536529541 C 20.49543571472168 11.38551902770996 19.0524845123291 9.051183700561523 16.81904029846191 7.933856964111328 C 15.91708183288574 7.4828782081604 14.8967170715332 7.24424934387207 13.86759185791016 7.24424934387207 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_share =
    '<svg viewBox="218.7 92.9 12.3 12.3" ><path  d="M 224.2831573486328 92.90299987792969 L 221.1986236572266 92.90299987792969 C 219.8358764648438 92.90299987792969 218.7310028076172 94.00788116455078 218.7310028076172 95.37062835693359 L 218.7310028076172 102.7735137939453 C 218.7310028076172 104.1362609863281 219.8358764648438 105.2411499023438 221.1986236572266 105.2411499023438 L 228.6015167236328 105.2411499023438 C 229.9642639160156 105.2411499023438 231.0691528320312 104.1362609863281 231.0691528320312 102.7735137939453 C 231.0691528320312 101.3725280761719 231.0691528320312 99.68898010253906 231.0691528320312 99.68898010253906 C 231.0691528320312 99.34844970703125 230.7927703857422 99.07206726074219 230.4522399902344 99.07206726074219 C 230.1117095947266 99.07206726074219 229.8353271484375 99.34844970703125 229.8353271484375 99.68898010253906 L 229.8353271484375 102.7735137939453 C 229.8353271484375 103.4545745849609 229.2825775146484 104.0073394775391 228.6015167236328 104.0073394775391 C 226.5472106933594 104.0073394775391 223.2523040771484 104.0073394775391 221.1986236572266 104.0073394775391 C 220.5169525146484 104.0073394775391 219.9648132324219 103.4545745849609 219.9648132324219 102.7735137939453 C 219.9648132324219 100.7192077636719 219.9648132324219 97.42431640625 219.9648132324219 95.37062835693359 C 219.9648132324219 94.68894195556641 220.5169525146484 94.13681030273438 221.1986236572266 94.13681030273438 L 224.2831573486328 94.13681030273438 C 224.6237030029297 94.13681030273438 224.9000701904297 93.86044311523438 224.9000701904297 93.51990509033203 C 224.9000701904297 93.17936706542969 224.6237030029297 92.90299987792969 224.2831573486328 92.90299987792969 Z M 228.9630279541016 94.13681030273438 L 226.7507934570312 94.13681030273438 C 226.4102630615234 94.13681030273438 226.1338806152344 93.86044311523438 226.1338806152344 93.51990509033203 C 226.1338806152344 93.17936706542969 226.4102630615234 92.90299987792969 226.7507934570312 92.90299987792969 L 230.4522399902344 92.90299987792969 C 230.7927703857422 92.90299987792969 231.0691528320312 93.17936706542969 231.0691528320312 93.51990509033203 L 231.0691528320312 97.22135162353516 C 231.0691528320312 97.5618896484375 230.7927703857422 97.8382568359375 230.4522399902344 97.8382568359375 C 230.1117095947266 97.8382568359375 229.8353271484375 97.5618896484375 229.8353271484375 97.22135162353516 L 229.8353271484375 95.00912475585938 L 225.3362274169922 99.50822448730469 C 225.0956268310547 99.74882507324219 224.7045135498047 99.74882507324219 224.4639129638672 99.50822448730469 C 224.2227020263672 99.26763153076172 224.2227020263672 98.87651062011719 224.4639129638672 98.63591766357422 L 228.9630279541016 94.13681030273438 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_blueBackground =
    '<svg viewBox="537.0 562.0 37.0 37.0" ><path transform="translate(537.0, 562.0)" d="M 18.5 0 C 28.71726608276367 0 37 8.282732963562012 37 18.5 C 37 28.71726608276367 28.71726608276367 37 18.5 37 C 8.282732963562012 37 0 28.71726608276367 0 18.5 C 0 8.282732963562012 8.282732963562012 0 18.5 0 Z" fill="#0074f6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_facebookLogo =
    '<svg viewBox="550.8 571.1 9.4 18.7" ><path transform="translate(544.63, 571.14)" d="M 13.83731269836426 3.107695579528809 L 15.54596042633057 3.107695579528809 L 15.54596042633057 0.1317942887544632 C 15.25117683410645 0.09124216437339783 14.23737525939941 -8.940696716308594e-08 13.05668449401855 -8.940696716308594e-08 C 10.59314346313477 -8.940696716308594e-08 8.905551910400391 1.549558520317078 8.905551910400391 4.397564888000488 L 8.905551910400391 7.018634796142578 L 6.187000751495361 7.018634796142578 L 6.187000751495361 10.34546756744385 L 8.905551910400391 10.34546756744385 L 8.905551910400391 18.71636009216309 L 12.23862361907959 18.71636009216309 L 12.23862361907959 10.34624767303467 L 14.84721565246582 10.34624767303467 L 15.26131534576416 7.019415378570557 L 12.23784351348877 7.019415378570557 L 12.23784351348877 4.72744083404541 C 12.23862361907959 3.765887975692749 12.49753284454346 3.107695817947388 13.83731269836426 3.107695817947388 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_square =
    '<svg viewBox="10.8 10.8 20.5 20.5" ><path  d="M 24.97911071777344 10.77111148834229 L 17.12688827514648 10.77111148834229 C 13.6242208480835 10.77111148834229 10.77933311462402 13.61600112915039 10.77933311462402 17.11866569519043 L 10.77933311462402 24.97089004516602 C 10.77933311462402 28.47355651855469 13.6242208480835 31.31844711303711 17.12688827514648 31.31844711303711 L 24.97911071777344 31.31844711303711 C 28.48177719116211 31.31844711303711 31.32666778564453 28.47355651855469 31.32666778564453 24.97089004516602 L 31.32666778564453 17.11866760253906 C 31.32666778564453 13.61600112915039 28.48177719116211 10.7711124420166 24.97911071777344 10.7711124420166 Z M 29.03266525268555 24.97911071777344 C 29.03266525268555 27.21555519104004 27.21555328369141 29.0408878326416 24.97088813781738 29.0408878326416 L 17.11866569519043 29.0408878326416 C 14.88222122192383 29.0408878326416 13.05688762664795 27.22377586364746 13.05688762664795 24.97911071777344 L 13.05688762664795 17.12688827514648 C 13.05688762664795 14.89044380187988 14.87399959564209 13.06511116027832 17.11866569519043 13.06511116027832 L 24.97088813781738 13.06511116027832 C 27.20733261108398 13.06511116027832 29.03266525268555 14.88222217559814 29.03266525268555 17.12688827514648 L 29.03266525268555 24.97911071777344 Z" fill="#ffffff" stroke="none" stroke-width="0.08222222328186035" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_instagramSquare =
    '<svg viewBox="0.0 0.0 19.9 19.9" ><path transform="translate(0.0, 0.0)" d="M 14.02686977386475 0.06300664693117142 C 12.19943141937256 -0.02224067971110344 7.673047065734863 -0.01810245960950851 5.843954086303711 0.06300664693117142 C 4.236669540405273 0.1383222341537476 2.818915843963623 0.5264872312545776 1.675939798355103 1.669463515281677 C -0.2342623919248581 3.579665184020996 0.009892616420984268 6.153638362884521 0.009892616420984268 9.928523063659668 C 0.009892616420984268 13.79196548461914 -0.2052947878837585 16.30634498596191 1.675939798355103 18.18758010864258 C 3.593590497970581 20.10440444946289 6.204807281494141 19.85362815856934 9.93499755859375 19.85362815856934 C 13.76202392578125 19.85362815856934 15.08294296264648 19.85611152648926 16.4361400604248 19.33221435546875 C 18.27599334716797 18.61795616149902 19.66477966308594 16.97342681884766 19.80051422119141 14.01956653594971 C 19.88658905029297 12.1913013458252 19.88162231445312 7.665744304656982 19.80051422119141 5.836651802062988 C 19.63663864135742 2.349787473678589 17.76533699035645 0.2351572960615158 14.02686977386475 0.06300761550664902 Z M 16.91948509216309 16.92376708984375 C 15.66726016998291 18.17599296569824 13.9300365447998 18.06426048278809 9.91099739074707 18.06426048278809 C 5.772777080535889 18.06426048278809 4.113351345062256 18.1255054473877 2.902507781982422 16.91135406494141 C 1.507928013801575 15.52339458465576 1.760359168052673 13.29454898834229 1.760359168052673 9.915280342102051 C 1.760359168052673 5.342547416687012 1.291085243225098 2.049352645874023 5.880370616912842 1.814301490783691 C 6.934788703918457 1.777057528495789 7.245155334472656 1.764642834663391 9.899411201477051 1.764642834663391 L 9.936654090881348 1.789472222328186 C 14.34716892242432 1.789472222328186 17.80754852294922 1.327646851539612 18.01528739929199 5.916104793548584 C 18.06246185302734 6.963074684143066 18.07322120666504 7.277579784393311 18.07322120666504 9.927694320678711 C 18.0723934173584 14.01791000366211 18.15019226074219 15.68726825714111 16.91948509216309 16.92376899719238 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_blueLightBackground =
    '<svg viewBox="537.0 562.0 37.0 37.0" ><path transform="translate(537.0, 562.0)" d="M 18.5 0 C 28.71726608276367 0 37 8.282732963562012 37 18.5 C 37 28.71726608276367 28.71726608276367 37 18.5 37 C 8.282732963562012 37 0 28.71726608276367 0 18.5 C 0 8.282732963562012 8.282732963562012 0 18.5 0 Z" fill="#1f9cea" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_twitterLogo =
    '<svg viewBox="545.9 572.7 19.2 15.6" ><path transform="translate(545.88, 570.43)" d="M 17.26830101013184 6.149681091308594 C 18.05096435546875 5.593958854675293 18.70933151245117 4.900307655334473 19.24580764770508 4.101606845855713 L 19.24580764770508 4.100804805755615 C 18.52970314025879 4.414350986480713 17.76789093017578 4.622847557067871 16.97239685058594 4.72388744354248 C 17.79034423828125 4.235525131225586 18.41503143310547 3.468099355697632 18.70852851867676 2.543498754501343 C 17.94591522216797 2.998180627822876 17.10391235351562 3.318944215774536 16.20657539367676 3.498571634292603 C 15.48245334625244 2.727135419845581 14.45039558410645 2.25 13.32451725006104 2.25 C 11.14011859893799 2.25 9.381532669067383 4.023019313812256 9.381532669067383 6.196192264556885 C 9.381532669067383 6.508936882019043 9.40799617767334 6.809652328491211 9.47295093536377 7.095933437347412 C 6.19314432144165 6.935552597045898 3.290234804153442 5.363811016082764 1.339992761611938 2.968510627746582 C 0.9999836087226868 3.55951714515686 0.7995063662528992 4.235525608062744 0.7995063662528992 4.962856769561768 C 0.7995063662528992 6.329309463500977 1.502780199050903 7.540191173553467 2.552478551864624 8.241861343383789 C 1.918169021606445 8.229831695556641 1.296689867973328 8.045393943786621 0.7698357701301575 7.755905151367188 L 0.7698357701301575 7.799208164215088 C 0.7698357701301575 9.716571807861328 2.137089729309082 11.30916118621826 3.930959463119507 11.67643642425537 C 3.609394073486328 11.76464557647705 3.259762048721313 11.8063440322876 2.896497488021851 11.8063440322876 C 2.643896102905273 11.8063440322876 2.388889312744141 11.79191017150879 2.149920463562012 11.73898506164551 C 2.660736083984375 13.30110263824463 4.112191200256348 14.45023822784424 5.836295127868652 14.4879264831543 C 4.493900299072266 15.53762531280518 2.789041996002197 16.17033195495605 0.9438502788543701 16.17033195495605 C 0.6206811666488647 16.17033195495605 0.3103424608707428 16.15589714050293 3.814697265625e-06 16.11660385131836 C 1.748164653778076 17.2432861328125 3.818692922592163 17.8872184753418 6.052810192108154 17.8872184753418 C 13.01578330993652 17.8872184753418 17.55378341674805 12.07819271087646 17.26830291748047 6.149681091308594 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yellowBackground =
    '<svg viewBox="537.0 562.0 37.0 37.0" ><path transform="translate(537.0, 562.0)" d="M 18.5 0 C 28.71726608276367 0 37 8.282732963562012 37 18.5 C 37 28.71726608276367 28.71726608276367 37 18.5 37 C 8.282732963562012 37 0 28.71726608276367 0 18.5 C 0 8.282732963562012 8.282732963562012 0 18.5 0 Z" fill="#f7f300" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_snapchatLogo =
    '<svg viewBox="546.2 571.3 18.6 17.4" ><path transform="translate(546.22, 570.55)" d="M 16.0627384185791 15.38591766357422 C 16.76773262023926 15.27537536621094 18.22642135620117 15.02027893066406 18.50548362731934 14.37789821624756 C 18.64617156982422 14.04704570770264 18.44518852233887 13.77803516387939 18.18854522705078 13.73706340789795 L 18.18854522705078 13.73629093170166 C 15.70869445800781 13.3281364440918 14.59090805053711 10.78799057006836 14.5452995300293 10.67976760864258 C 13.8580846786499 9.447573661804199 15.7233829498291 9.654742240905762 16.45697975158691 8.903366088867188 C 17.17279624938965 8.166678428649902 16.02486038208008 7.368921756744385 15.30672359466553 7.707504272460938 C 15.01220226287842 7.845875263214111 14.57080841064453 8.00666332244873 14.27705955505371 7.872158050537109 C 14.34663200378418 6.705670356750488 14.53911399841309 4.771573066711426 14.06679916381836 3.715627193450928 C 12.47824192047119 0.1574139297008514 7.793737888336182 0.02909262478351593 5.616912364959717 2.094603300094604 C 3.901580572128296 3.721038341522217 4.111841678619385 5.393081665039062 4.272630214691162 7.872158050537109 C 3.739246129989624 8.104836463928223 3.212046146392822 7.642570972442627 2.827855110168457 7.642570972442627 C 2.424338340759277 7.642570972442627 1.955114960670471 7.904624938964844 1.879359006881714 8.299637794494629 C 1.783504366874695 8.81833553314209 2.347036361694336 9.152279853820801 2.834812164306641 9.344761848449707 C 3.665808916091919 9.670976638793945 4.455835819244385 9.767603874206543 4.017532825469971 10.65812397003174 C 4.013668060302734 10.66508102416992 4.010575771331787 10.67203807830811 4.008256912231445 10.67899608612061 C 3.387521505355835 12.09671497344971 2.032416820526123 13.45954990386963 0.3642383515834808 13.73474597930908 C 0.09522723406553268 13.77880764007568 -0.0887516587972641 14.06250667572021 0.04575392231345177 14.37557983398438 L 0.04575392231345177 14.37712669372559 C 0.3217222094535828 15.0202808380127 1.794326186180115 15.27769660949707 2.489271640777588 15.38591861724854 C 2.704171180725098 15.78788948059082 2.539518117904663 16.5817813873291 3.20508861541748 16.5817813873291 C 3.464050531387329 16.5817813873291 3.964967727661133 16.41249084472656 4.604255199432373 16.41249084472656 C 5.535745143890381 16.41249084472656 5.853456497192383 16.61579513549805 6.600193977355957 17.14299392700195 C 7.367030143737793 17.68488311767578 8.209622383117676 18.21440124511719 9.257065773010254 18.13787269592285 C 10.34779739379883 18.20589828491211 11.15792274475098 17.70420837402344 11.95258712768555 17.14454078674316 L 11.95336055755615 17.14299392700195 C 12.72792720794678 16.59801483154297 13.28140926361084 16.19527244567871 14.9217586517334 16.51762199401855 C 16.13540077209473 16.75262069702148 15.78135681152344 15.93089771270752 16.06273651123047 15.38591861724854 Z" fill="#ffffff" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_notifBell =
    '<svg viewBox="5.5 2.6 12.5 15.3" ><path transform="translate(2.49, 1.61)" d="M 3 12.80912971496582 C 3 13.19308948516846 3.310695171356201 13.50378513336182 3.694654703140259 13.50378513336182 L 5.778619289398193 13.50378513336182 L 6.473273754119873 13.50378513336182 C 6.473273754119873 15.03623104095459 7.719446182250977 16.28240394592285 9.25189208984375 16.28240394592285 C 10.78433799743652 16.28240394592285 12.03051090240479 15.03623104095459 12.03051090240479 13.50378513336182 L 12.72516536712646 13.50378513336182 L 14.80912971496582 13.50378513336182 C 15.19308948516846 13.50378513336182 15.5037841796875 13.19308948516846 15.5037841796875 12.80912971496582 C 15.5037841796875 12.4251708984375 15.19308948516846 12.11447525024414 14.80912971496582 12.11447525024414 L 14.68112945556641 12.11447525024414 C 14.75897216796875 11.8961238861084 14.80912971496582 11.66458606719971 14.80912971496582 11.41982078552246 L 14.80912971496582 7.946547508239746 C 14.80912971496582 5.362791538238525 13.03408050537109 3.191571235656738 10.64120197296143 2.572216033935547 L 10.64120197296143 2.389309406280518 C 10.64120197296143 1.623425483703613 10.01777648925781 1 9.25189208984375 1 C 8.486008644104004 1 7.862583160400391 1.623425483703613 7.862583160400391 2.389309406280518 L 7.862583160400391 2.572216033935547 C 5.469704627990723 3.191571235656738 3.694654703140259 5.362791538238525 3.694654703140259 7.946547508239746 L 3.694654703140259 11.41982078552246 C 3.694654703140259 11.66458606719971 3.74485445022583 11.8961238861084 3.822697639465332 12.11447525024414 L 3.694654703140259 12.11447525024414 C 3.310695171356201 12.11447525024414 3 12.4251708984375 3 12.80912971496582 Z M 9.25189208984375 14.89309406280518 C 8.486008644104004 14.89309406280518 7.862583160400391 14.26966857910156 7.862583160400391 13.50378513336182 L 10.64120197296143 13.50378513336182 C 10.64120197296143 14.26966857910156 10.01777648925781 14.89309406280518 9.25189208984375 14.89309406280518 Z M 5.083964347839355 11.41982078552246 L 5.083964347839355 7.946547508239746 C 5.083964347839355 5.64821720123291 6.953562259674072 3.778618812561035 9.25189208984375 3.778618812561035 C 11.55022239685059 3.778618812561035 13.41981983184814 5.64821720123291 13.41981983184814 7.946547508239746 L 13.41981983184814 11.41982078552246 C 13.41981983184814 11.80310153961182 13.10844707489014 12.11447525024414 12.72516536712646 12.11447525024414 L 11.33585643768311 12.11447525024414 L 7.167928218841553 12.11447525024414 L 5.778619289398193 12.11447525024414 C 5.39533805847168 12.11447525024414 5.083964347839355 11.80310153961182 5.083964347839355 11.41982078552246 Z" fill="#ffffff" stroke="#f36d96" stroke-width="0.30000001192092896" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_arrowLeft =
    '<svg viewBox="0.0 0.0 19.6 16.8" ><path transform="translate(0.0, -31.88)" d="M 0.4104275107383728 39.29095077514648 C 0.4107777178287506 39.29060363769531 0.4111719727516174 39.29020690917969 0.4115220904350281 39.28985977172852 L 7.41850471496582 32.28287887573242 C 7.968202590942383 31.73803520202637 8.855504989624023 31.74197959899902 9.400341033935547 32.29168319702148 C 9.443389892578125 32.33512115478516 9.483548164367676 32.38132858276367 9.520597457885742 32.43002319335938 C 9.913471221923828 33.01603317260742 9.827723503112793 33.79971313476562 9.317395210266113 34.28687286376953 L 5.449542999267578 38.16874313354492 C 5.243930816650391 38.37456893920898 5.007534503936768 38.54716110229492 4.748844146728516 38.68025207519531 L 4.321417808532715 38.90447616577148 L 18.09013748168945 38.90447616577148 C 18.79516792297363 38.87482070922852 19.41922760009766 39.35695266723633 19.5686092376709 40.04661178588867 C 19.6924991607666 40.81059646606445 19.17363357543945 41.53038024902344 18.40961074829102 41.65427398681641 C 18.32946586608887 41.66728210449219 18.24836349487305 41.67328262329102 18.16721153259277 41.6722297668457 L 4.349446296691895 41.6722297668457 L 4.650746822357178 41.81237411499023 C 4.944735050201416 41.94966506958008 5.212618827819824 42.13697052001953 5.442535877227783 42.36592483520508 L 9.317395210266113 46.24078750610352 C 9.827724456787109 46.72794723510742 9.913471221923828 47.51163864135742 9.520599365234375 48.09763717651367 C 9.063349723815918 48.72209548950195 8.186469078063965 48.85767364501953 7.561974048614502 48.40042114257812 C 7.511523246765137 48.36346054077148 7.463569164276123 48.32317352294922 7.418506145477295 48.27981567382812 L 0.4115234315395355 41.2728385925293 C -0.1360293477773666 40.72585296630859 -0.136511817574501 39.83854675292969 0.4104275107383728 39.29095077514648 Z" fill="#222222" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
