import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:subhan/firebaseservice.dart';
import 'package:subhan/login.dart';



class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Register form",
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
          Text("Already have an account?"),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen2(),
                )),
            child: Text(
              "Login",
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
                _signup();
                print("registered successful");
              },
              child: Text(
                "Register",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )),
          )
        ],
      ),
    );
  }

  void _signup() async {
    String email = _emailcontroller.text;
    String password = _passwordcontroller.text;

    User? user = await _auth.Signupwithemailandpassword(email, password);

    if (user != null) {
      print("user is succesfully created");
      Navigator.pushNamed(context, "/home");
    } else
      print("some error happen");
  }
}
