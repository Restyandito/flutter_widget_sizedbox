import 'package:flutter/material.dart';
import 'dart:developer'; // Untuk log

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SizedBox Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SizedboxPage(),
    );
  }
}

class SizedboxPage extends StatefulWidget {
  const SizedboxPage({super.key});

  @override
  _SizedboxPageState createState() => _SizedboxPageState();
}

class _SizedboxPageState extends State<SizedboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SizedBox',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('This text and'),
                  Text('the next text have no distance'),
                ],
              ),
              const SizedBox(height: 16.0), // Spasi vertikal 16 piksel
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('This text and'),
                  SizedBox(width: 24.0), // Spasi horizontal 24 piksel
                  Text('the next text have distance'),
                ],
              ),
              const SizedBox(height: 16.0), // Spasi vertikal 16 piksel
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.indigo,
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.pink,
                  ),
                ],
              ),
              const SizedBox(height: 16.0), // Spasi vertikal 16 piksel
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.indigo,
                  ),
                  const SizedBox(width: 24.0), // Spasi horizontal 24 piksel
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.pink,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
