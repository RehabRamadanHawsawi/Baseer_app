// ignore: file_names
import 'package:baseer_app_qp/Pages/LoginAdmin.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class Baseer extends StatelessWidget {
  const Baseer({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Welcome(),
    );
  }
}

//-----------------------------------------------------------------------WELCOME 1
class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 254, 184, 166),
          title: const Text(
            'مرحباً بك',
            style: TextStyle(
                fontFamily: 'Amiri', color: Colors.black, fontSize: 25),
          ),
          titleSpacing: 0.0,
          centerTitle: true,
        ),
//-----------------------------------------------------------LOGO
        extendBodyBehindAppBar: true,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('images/LOGO-.png'),
              width: 550,
              height: 650,
            ),
//-----------------------------------------------------TOW BUTTON
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 15, 15, 15),
                    backgroundColor: const Color.fromARGB(255, 254, 184, 166),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const LoginAdmin()),
                    );
                  },
                  child: const Text(
                    'المسؤول',
                    style: TextStyle(fontFamily: 'Cairo', fontSize: 24),
                  ),
                ),
                const SizedBox(width: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 15, 15, 15),
                    backgroundColor: const Color.fromARGB(255, 254, 184, 166),
                  ),
                  onPressed: () {
                    // Navigate to the home page when the button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  child: const Text(
                    'المستخدم',
                    style: TextStyle(fontFamily: 'Cairo', fontSize: 24),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
