import 'package:flutter/material.dart';

class Newpage extends StatefulWidget {
  const Newpage({super.key});

  @override
  State<Newpage> createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
bottomNavigationBar: BottomNavigationBar(items: [
  BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.home),label: 'setting'),

    BottomNavigationBarItem(icon: Icon(Icons.home),label: 'profile'),
  
  
  
  ]),

























    
      body: Column(
        children: [
          Text(
            "Welcome to our home page",
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
