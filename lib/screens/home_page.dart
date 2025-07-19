import 'package:flutter/material.dart';
import 'package:login_app/category/login.dart';
import 'package:login_app/category/login.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        children: [
          Text(
            "sign up",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Text(
            "create your account",
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: const Color.fromARGB(255, 244, 242, 242),
                filled: true,
                hint: Text("Username"),
                prefixIcon: Icon(Icons.person),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: const Color.fromARGB(255, 244, 242, 242),
                filled: true,
                prefixIcon: Icon(Icons.email),
                hint: Text("Email"),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: const Color.fromARGB(255, 244, 242, 242),
                filled: true,
                hint: Text("password"),
                prefixIcon: Icon(Icons.password),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: const Color.fromARGB(255, 244, 242, 242),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                filled: true,
                hint: Text(" Confirm password"),
                prefixIcon: Icon(Icons.password),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
            ),
          ),

          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF9A2AAF)),
            ),
            onPressed: () {},
            child: Text("sign up", style: TextStyle(color: Colors.white)),
          ),
          Text("or"),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF9A2AAF)),
            ),
            onPressed: () {},
            child: Text(
              "sign in with geogle",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("you already have an account"),
              SizedBox(width: 18,),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 234, 212, 237),
                  ),
                ),
                onPressed: () {
                   Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => LoginPage(),
      ),
    );
                },
                child: Text("login", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
