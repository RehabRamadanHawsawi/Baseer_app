// ignore_for_file: file_names
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import '../components/my_components.dart';

class LoginAdmin extends StatelessWidget {
  //اعطاء اسم للصفة لتسهيل الاستدعاء في / main
  static const String id = 'Login_Admin';
  LoginAdmin({Key? key}) : super(key: key);

//class _LoginAdmin extends State<LoginAdmin>{
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _idController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'تسجيل الدخول ',
        ),
      ),
      //تم تضمين سهم رجوع تلقائي بسبب //return Scaffold
      /*appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 254, 184, 166),
        title: const Text(
          'تسجيل الدخول ',
          style:
              TextStyle(fontFamily: 'Amiri', color: Colors.black, fontSize: 25),
        ),
        titleSpacing: 0.0,
        centerTitle: true,
      ),*/

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          // ListView لتجنب ظهور خطاء لوحت المفاتيح تم استخدام
          //ايضاً هناك حل اخر هو جمع
          //    داخل طفل يحمل MyTextField
          //SinglChildScrollView
          children: [
            Image.asset('images/LOGO-.png', width: 400, height: 400),

            // --------------------------------Email
            const MyTextField(
              //  controller: _emailController,
              hintText: "Email",
            ),
            const SizedBox(
              height: 19,
            ),
            // -------------------------------Password
            const MyTextField(
              //  controller: _passwordController,
              hintText: "كلمة المرور",
              prefixIcon: Icon(Icons.remove_red_eye), //الكشف عن الرمز
              obscureText: true,
            ),
            const SizedBox(
              height: 19,
            ),
            // ------------------------------------ID
            const MyTextField(
              // controller: _idController,
              hintText: "رقم التعريف ",
            ),
            const SizedBox(
              height: 19,
            ),
            //------------------------------------ButtonLogin
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120.0),
              child: Container(
                //padding: const EdgeInsets.all(37),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 254, 184, 166),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    "دخول",
                    style: TextStyle(
                      fontFamily: 'Amiri',
                      color: Colors.black,
                      fontSize: 23,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
