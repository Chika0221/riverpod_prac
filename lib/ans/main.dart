import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_prac/ans/ans_page.dart';

void main(){

  final scope = ProviderScope(child: AnsApp());

  runApp(scope);
}


class AnsApp extends StatelessWidget {
  const AnsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnsPage(),
    );
  }
}




