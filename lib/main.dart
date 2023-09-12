import 'package:currency_converter/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(174, 210, 255, 1),
        appBar: AppBar(
          backgroundColor:const Color.fromARGB(255, 39, 0, 93),
          title: const Text('Currency Converter',style: TextStyle(color: Colors.white),),
        ),
        body:const HomeScreen(),
      ),
    ),
  );
}
