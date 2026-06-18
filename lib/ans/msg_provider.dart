import 'package:flutter_riverpod/flutter_riverpod.dart';

final msgProvider = NotifierProvider.autoDispose<MsgNotifier, String>(MsgNotifier.new);

class MsgNotifier extends Notifier<String> {
  @override
  String build() {
    return "Hello?";
  }

  void change(String newMsg) {
    state = newMsg;
  }
}