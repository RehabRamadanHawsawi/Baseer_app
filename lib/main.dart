import 'package:flutter/material.dart';
import 'Pages/LoginAdmin.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginAdmin(),
    ), // initialRoute: Welcome.id,
  );
}
