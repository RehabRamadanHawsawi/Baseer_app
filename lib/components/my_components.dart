// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

//stls اختصار بناء new Class

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.obscureText,
    //required TextEditingController cnotroller,
    //required TextEditingController controller,
  });

  final String? hintText;
  final Widget? prefixIcon;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 10.0), //طول TextField كل ما قل الرقم صار اطول
      child: TextField(
        // controller: TextEditingController(),
        obscureText: false,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          prefixIcon: prefixIcon,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(176, 185, 185, 190)),
          ),
          filled: true,
          fillColor: const Color.fromARGB(176, 185, 185, 190),
          hintText: hintText,
        ),
      ),
    );
  }
}

//----------------------------AppBar
class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 254, 184, 166),
        title: Text(
          text ?? '',
          style: const TextStyle(
              fontFamily: 'Amiri', color: Colors.black, fontSize: 25),
        ),
        titleSpacing: 0.0,
        centerTitle: true,
      ),
    );
  }
}
