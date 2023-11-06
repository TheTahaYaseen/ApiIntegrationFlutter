// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API Integration',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameEditingController = TextEditingController();
    TextEditingController _emailEditingController = TextEditingController();
    String error = "";
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _nameEditingController,
              decoration:
                  const InputDecoration(hintText: "E.g. The Taha Yaseen"),
            ),
            TextField(
              controller: _emailEditingController,
              decoration: const InputDecoration(
                  hintText: "E.g. thetahayaseen@gmail.com"),
            ),
            ElevatedButton(
                onPressed: () {
                  var name = _nameEditingController.text;
                  var email = _emailEditingController.text;
                  if (name.isNotEmpty && email.isNotEmpty) {
                    error = registerUser(name: name, email: email);
                  } else {
                    error = "Both Username And Email Must Be Filled!";
                  }
                },
                child: Text("Add"))
          ],
        ),
      ),
    );
  }
}
