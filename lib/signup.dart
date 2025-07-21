import 'package:flutter/material.dart';
import 'component/textfield.dart';
import 'component/button.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
        body: Column(
          children: [
            Image.asset("images/boy_and_girl.png", height: 300),
            Container(
              height: 280,
              decoration: const BoxDecoration(
                color: Color(0xFF1381A6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Textfield(
                    prefixIcon: Icon(Icons.person),
                    hintText: 'اسم المستخدم',
                    textAlign: TextAlign.right,
                    
                  ),
                  Textfield(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'الايميل',
                    textAlign: TextAlign.right,
                    
                  ),
                  Textfield(
                    prefixIcon: Icon(Icons.password),
                    obscuretext: true,
                    hintText: 'كلمة المرور',
                    textAlign: TextAlign.right,
                    
                  ),
                  Textfield(
                    prefixIcon: Icon(Icons.password),
                    obscuretext: true,
                    hintText: 'تاكيد كلمة المرور',
                    textAlign: TextAlign.right,
                    
                  ),
                  button(onpressed: (){},text: 'نسجيل الان',)
                ],
              ),
            ),
          ],
        ),
      );
 
  }
}
