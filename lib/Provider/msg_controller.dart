import 'package:flutter/material.dart';

class MsgController extends ChangeNotifier {
  final Map<int, List> _chatMsgs = {};

  Map<int, List> get chatMsgs => _chatMsgs;

  void addmsg(String msg, bool isme, int index) {
    _chatMsgs.addAll(
      {
        index: [msg, isme]
      },
    );
    notifyListeners();
  }
}
