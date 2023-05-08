import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  //اعطاء اسم للصفة لتسهيل الاستدعاء في / main
  static const String id = 'Home';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log-in',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 254, 184, 166),
          title: const Text(
            'الصفحة الرئيسية',
            style: TextStyle(fontFamily: 'Cairo'),
          ),
          titleSpacing: 0.0,
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'معلومات ',
            style: TextStyle(fontFamily: 'Amiri'),
          ),
        ),
      ),
    );
  }
}
