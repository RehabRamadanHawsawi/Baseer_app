// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'Pages/LoginAdmin.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,

      ///ترجمة اللغة من عربي لانجايز والعكس
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('en', ''), // English
        const Locale('de', ''), // German
      ],
      home: LoginAdmin(),
    ), // initialRoute: Welcome.id,
  );
}
