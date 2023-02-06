import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement() {
    print("Decrement");
  }

  void increment() {
    print("Increment");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Pode Entrar",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(30),
            child: Text(
              "0",
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(100, 100),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                ),
                onPressed: decrement,
                child: const Text(
                  "Saiu",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(width: 30),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(100, 100),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                ),
                onPressed: increment,
                child: const Text(
                  "Entrou",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
