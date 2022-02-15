import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gallery/screens/home_screen.dart';
import 'package:gallery/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Form Key
  final _formKey = GlobalKey<FormState>();

  // Editing Controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
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
      controller: emailController,
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
        emailController.text = value!;
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
      controller: passwordController,
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
        passwordController.text = value!;
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

    // Reset Password Button
    final resetPassword = const Text.rich(
      TextSpan(
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 13,
          color: Color(0xffa7adb5),
          height: 2.4615384615384617,
        ),
        children: [
          TextSpan(
            text: 'Mot de passe oublié ? ',
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: 'Réinitialiser',
            style: TextStyle(
              color: Color(0xff02132b),
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );

    // Login Button
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.black,
      child: SizedBox(
        width: 316.0,
        height: 50,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            signIn(emailController.text, passwordController.text);
          },
          child: const Text(
            'Connexion',
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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RegistrationScreen(),
              ),
            );
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 50,
                      child: Text(
                        "Connectez-vous ou \ncréez un compte.",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 45),
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
                    const SizedBox(height: 15),
                    resetPassword,
                    const SizedBox(height: 25),
                    Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff02132b),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: loginButton),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then(
            (uid) => {
              Fluttertoast.showToast(msg: "Login Successful"),
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              ),
            },
          )
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}
