import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'SIGN IN TO YOUR ACCOUNT';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
         
          centerTitle: true,
          title: const Text(
            appTitle,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold),
            ),
          
        ),
        body: const MyCustomForm(),
      ),
    );
  }

  double getScreenHeight() {
    return window.physicalSize.height;
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        children: [
          _textField("Username"),
          _textField("Password"),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged:(val){
                  
                 }),
                 Text('Keep me signed in'),
            ],
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.deepPurple,
              padding: const EdgeInsets.all(16.0),
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: const Text('Sign In'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 50, 10,0.5),
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                     TextSpan(
                      text: "Forgot your password?",
                      style: TextStyle(color: Colors.grey))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _textField(String context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[300],
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide.none),
          hintText: context,
        ),
      ),
    );
  }
}