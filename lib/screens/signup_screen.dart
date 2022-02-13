import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gallery/models/user_model.dart';
import 'package:gallery/screens/home_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // Firebase Authentication
  final _auth = FirebaseAuth.instance;

  // Form Key
  final _formKey = GlobalKey<FormState>();

  // Editing Controller
  final fullNameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmPasswordEditingController = new TextEditingController();

  // FullName Placeholder
  final titleFullName = const Text(
    "Nom Complet",
    style: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      color: Color(0xff02132b),
      fontWeight: FontWeight.w500,
      height: 1.6666666666666667,
    ),
  );

  // FullName Field
  final fullNameField = TextFormField(
    autofocus: false,
    controller: fullNameEditingController,
    validator: (value) {
      RegExp regex = new RegExp(r'^.{6,}$');
      if (value!.isEmpty) {
        return ("Full Name is required for login");
      }
      if (!regex.hasMatch(value)) {
        return ("Enter a Name of Min. 6 characters");
      }
    },
    onSaved: (value) {
      fullNameEditingController.text = value!;
    },
    textInputAction: TextInputAction.done,
    style: const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 13,
      color: Color(0x6902132b),
      fontWeight: FontWeight.w500,
      height: 1.7692307692307692,
    ),
    decoration: InputDecoration(
      prefixIcon: const Icon(Icons.account_circle),
      contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
      hintText: "Nom Complet",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    ),
  );

  // Email Placeholder
  final titleEmail = const Text(
    "Adresse Email",
    style: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      color: Color(0xff02132b),
      fontWeight: FontWeight.w500,
      height: 1.6666666666666667,
    ),
  );

  // Email Field
  final emailField = TextFormField(
    autofocus: false,
    controller: emailEditingController,
    keyboardType: TextInputType.emailAddress,
    validator: (value) {
      if (value!.isEmpty) {
        return ("Please enter your Email");
      }
      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
        return ("Please enter a Valid Email");
      }
      return null;
    },
    onSaved: (value) {
      emailEditingController.text = value!;
    },
    textInputAction: TextInputAction.next,
    style: const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 13,
      color: Color(0x6902132b),
      fontWeight: FontWeight.w500,
      height: 1.7692307692307692,
    ),
    decoration: InputDecoration(
      prefixIcon: const Icon(Icons.mail),
      contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
      hintText: "john.doe@gmail.com",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    ),
  );

  // Password Placeholder
  final titlePassword = const Text(
    "Mot de Passe",
    style: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      color: Color(0xff02132b),
      fontWeight: FontWeight.w500,
      height: 1.6666666666666667,
    ),
  );

  // Password Field
  final passwordField = TextFormField(
    autofocus: false,
    obscureText: true,
    controller: passwordEditingController,
    validator: (value) {
      RegExp regex = new RegExp(r'^.{6,}$');
      if (value!.isEmpty) {
        return ("Password is required for login");
      }
      if (!regex.hasMatch(value)) {
        return ("Enter valid password (Min. of 6 characters)");
      }
    },
    onSaved: (value) {
      passwordEditingController.text = value!;
    },
    textInputAction: TextInputAction.done,
    style: const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 13,
      color: Color(0x6902132b),
      fontWeight: FontWeight.w500,
      height: 1.7692307692307692,
    ),
    decoration: InputDecoration(
      prefixIcon: const Icon(Icons.vpn_key),
      contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
      hintText: "Mot de Passe",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    ),
  );

  // Password Confirmation Placeholder
  final titleConfirmPassword = const Text(
    "Confirmation Mot de Passe",
    style: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      color: Color(0xff02132b),
      fontWeight: FontWeight.w500,
      height: 1.6666666666666667,
    ),
  );

  // Password Field
  final confirmPasswordField = TextFormField(
    autofocus: false,
    obscureText: true,
    controller: confirmPasswordEditingController,
    validator: (value) {
      if (confirmPasswordEditingController.text !=
          passwordEditingController.text) {
        return "Password do not match";
      }
      return null;
    },
    onSaved: (value) {
      confirmPasswordEditingController.text = value!;
    },
    textInputAction: TextInputAction.done,
    style: const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 13,
      color: Color(0x6902132b),
      fontWeight: FontWeight.w500,
      height: 1.7692307692307692,
    ),
    decoration: InputDecoration(
      prefixIcon: const Icon(Icons.vpn_key),
      contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
      hintText: "Mot de Passe",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    ),
  );

  // SignUp Button
  final signUpButton = Material(
    elevation: 5,
    borderRadius: BorderRadius.circular(30),
    color: Colors.black,
    child: const SizedBox(
      width: 316.0,
      height: 50,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        onPressed: () {
          signUp(emailEditingController.text, passwordEditingController.text);
        },
        child: Text(
          'Inscription',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            color: Color(0xffffffff),
            fontWeight: FontWeight.w400,
            height: 1.2142857142857142,
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
          softWrap: false,
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 50,
                child: Text(
                  "Créez un compte.",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 45),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 270.0, 5),
                    child: titleFullName,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: const Color(0x0802132b),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: fullNameField),
                ],
              ),
              const SizedBox(height: 25),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 270.0, 5),
                    child: titleEmail,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: const Color(0x0802132b),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: emailField),
                ],
              ),
              const SizedBox(height: 25),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 270.0, 5),
                    child: titlePassword,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: const Color(0x0802132b),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: passwordField),
                ],
              ),
              const SizedBox(height: 25),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 200.0, 5),
                    child: titleConfirmPassword,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: const Color(0x0802132b),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: confirmPasswordField),
                ],
              ),
              const SizedBox(height: 35),
              Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff02132b),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  child: signUpButton),
            ],
          ),
        ),
      )),
    );
  }

  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

  postDetailsToFirestore() async {
    FirebaseFirestore firesbaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.fullName = fullNameEditingController.text;

    await firesbaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account successfully created !");

    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => HomeScreen()),
        (route) => false);
  }
}
