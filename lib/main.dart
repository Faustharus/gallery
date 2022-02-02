import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

final _auth = FirebaseAuth.instance;

class MyApp extends StatelessWidget {
  User? user = _auth.currentUser;

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instalike",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: user != null ? HomeScreen() : LoginScreen(),
    );
  }
}
