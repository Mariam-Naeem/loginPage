import 'package:flutter/material.dart';
import 'component/textfield.dart';
import 'component/button.dart';
import 'home_after_login.dart'; 

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/boy_and_girl.png", height: 300),
            Container(
              height: 370,
              decoration: const BoxDecoration(
                color: Color(0xFF1381A6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Textfield(
                    prefixIcon: Icon(Icons.person),
                    hintText: 'اسم المستخدم',
                    textAlign: TextAlign.right,
                  ),
                  const Textfield(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'الايميل',
                    textAlign: TextAlign.right,
                  ),
                  const Textfield(
                    prefixIcon: Icon(Icons.lock),
                    obscuretext: true,
                    hintText: 'كلمة المرور',
                    textAlign: TextAlign.right,
                  ),
                  const Textfield(
                    prefixIcon: Icon(Icons.lock),
                    obscuretext: true,
                    hintText: 'تأكيد كلمة المرور',
                    textAlign: TextAlign.right,
                  ),
                  button(
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeAfterLogin(),
                        ),
                      );
                    },
                    text: 'تسجيل الآن',
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "رجوع إلى تسجيل الدخول",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
