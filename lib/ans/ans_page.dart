import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_prac/ans/msg_provider.dart';

class AnsPage extends ConsumerWidget {
  const AnsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final message = ref.watch(msgProvider);


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
              ref.read(msgProvider.notifier).change("World");
            }, 
            child: Text("World"),
          ),
          const SizedBox(width: 8,),
          FilledButton(
            onPressed: (){
              ref.read(msgProvider.notifier).change("Flutter");
            }, 
            child: Text("Flutter"),
          ),
        ],
      ),
    );
  }
}