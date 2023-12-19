import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Diceeapp(),
    );
  }
}
class Diceeapp extends StatefulWidget {
  const Diceeapp({super.key});

  @override
  State<Diceeapp> createState() => _DiceeappState();
}

class _DiceeappState extends State<Diceeapp> {
  int Leftdicee = 1;
  int Rightdicee = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Center(child: Text('Dicee')),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(child: TextButton(
              onPressed: (){
                setState(() {
                Leftdicee = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset("assets/dice$Leftdicee.png"),
            ),
            ),
            Expanded(child: TextButton(
              onPressed: (){
                setState(() {
                  Rightdicee = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset("assets/dice$Rightdicee.png"),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
