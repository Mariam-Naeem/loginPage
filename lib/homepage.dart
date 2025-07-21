import 'package:flutter/material.dart';
import 'component/button.dart';
import 'component/textfield.dart';
import 'package:loginpage/signup.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
          children: [
            Image.asset("images/boy_and_girl.png", height: 300),
            Container(
              height: 260,
              decoration: BoxDecoration(
                color: Color(0xFF1381A6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "اهلا بك نحن سعداء يعودتك",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "من فضلك قم بتسجيل الدخول",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Textfield(
                    hintColor: Colors.grey,
                    hintText: "رقم الهاتف",
                    prefixIcon: Icon(Icons.phone),
                    textAlign: TextAlign.right,
                  ),

                  Textfield(
                    hintColor: Colors.grey,
                    hintText: "كلمة المرور",
                    prefixIcon: Icon(Icons.password),
                    textAlign: TextAlign.right,
                    obscuretext: true,
                  ),
                  button(onpressed: (){
                    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Signup()),
    );
                  },text: 'تسجيل الدخول',)
                ],
              ),
            ),
          ],
        ),
      );
  }
}