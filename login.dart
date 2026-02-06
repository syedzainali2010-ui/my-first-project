import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:subhan/firebaseservice.dart';
import 'package:subhan/newpage.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
    TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  final Firebaseauthservice _auth = Firebaseauthservice();
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           
      
      
          SizedBox(
            height: 50,
          ),
          Text(
            "login form",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Email:",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55),
            child: TextFormField(
              controller: _emailcontroller,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: "Enter Email",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 3),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400, width: 3),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Password:",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55),
            child: TextFormField(
              controller: _passwordcontroller,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: "Enter Password",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 3),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400, width: 3),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
          Text("dont have an account?"),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen2(),
                )),
            child: Text(
              "registered",
              style: TextStyle(color: Colors.blue),
            ),
          ),]),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 60,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(20)),
            child: Center(
                child: InkWell(
              onTap: () {
                _signin
                ();
                print("login successful");
              },
              child: Text(
                "login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )),
          )
        ],
      ));

        
  }
    void _signin() async {
    String email = _emailcontroller.text;
    String password = _passwordcontroller.text;

    User? user = await _auth.Signinwithemailandpassword(email, password);

    if (user != null) {
      print("user is succesfully created");
     Navigator.push(context, MaterialPageRoute(builder: (context) =>Newpage() ,));
    } else
      print("some error happen");
  }
}
