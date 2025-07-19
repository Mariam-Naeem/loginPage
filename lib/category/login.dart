import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Column(
        children: [ Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: const Color.fromARGB(255, 194, 193, 193),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  filled: true,
                  hint: Text(" Username"),
                  prefixIcon: Icon(Icons.person),
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
                fillColor: const Color.fromARGB(255, 194, 193, 193),
      
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
            child: Text(
              "login",
              style: TextStyle(color: Colors.white),
            ),
          ),
            ],
      )
    );
  }
}
