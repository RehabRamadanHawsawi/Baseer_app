// ignore: depend_on_referenced_packages
import 'dart:js';

import 'package:flutter/material.dart';
import 'Pages/LoginAdmin.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'
    show AppLocalizations;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,

      ///ترجمة اللغة من عربي لانجايز والعكس
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Arebic
      ],
      home: LoginAdmin(),
    ), // initialRoute: Welcome.id,
  );
}
