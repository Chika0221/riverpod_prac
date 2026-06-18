import 'package:flutter/material.dart';
import 'package:riverpod_prac/prac/prac_page.dart';

void main(){
  runApp(PracApp());
}




class PracApp extends StatelessWidget {
  const PracApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PracPage(),
    );
  }
}




