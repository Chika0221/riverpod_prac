import 'package:flutter/material.dart';

class PracPage extends StatefulWidget {
  const PracPage({super.key});

  @override
  State<PracPage> createState() => _PracPageState();
}

class _PracPageState extends State<PracPage> {

  String message = "Hello?";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(message),
      ),
      floatingActionButtonLocation: .centerFloat,
      floatingActionButton: Row(
        mainAxisSize: .min,
        children: [
          FilledButton(
            onPressed: (){
              setState(() {
                message = "World";
              });
            }, 
            child: Text("World"),
          ),
          const SizedBox(width: 8,),
          FilledButton(
            onPressed: (){
              setState(() {
                message = "Flutter";
              });
            }, 
            child: Text("Flutter"),
          ),
        ],
      ),
    );
  }
}