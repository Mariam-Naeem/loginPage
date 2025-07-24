import 'package:flutter/material.dart';
import 'package:loginpage/signup.dart';
import 'component/textfield.dart';
import 'component/button.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("images/boy_and_girl.png", height: 300),
          Container(
            height: 320,
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
                const Text(
                  "اهلا بك نحن سعداء يعودتك",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "من فضلك قم بتسجيل الدخول",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Textfield(
                  hintColor: Colors.grey,
                  hintText: "رقم الهاتف",
                  prefixIcon: Icon(Icons.phone),
                  textAlign: TextAlign.right,
                ),
                const Textfield(
                  hintColor: Colors.grey,
                  hintText: "كلمة المرور",
                  prefixIcon: Icon(Icons.lock),
                  textAlign: TextAlign.right,
                  obscuretext: true,
                ),
                button(
                  text: "تسجيل الدخول",
                  onpressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    );
                  },
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    );
                  },
                  child: const Text(
                    "ليس لديك حساب؟ سجل الآن",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
