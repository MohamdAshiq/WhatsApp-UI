import 'package:flutter/material.dart';

class MsgController extends ChangeNotifier {
  final Map<int, List> _chatMsgs = {
    0:["Hii",true],
    1:["How are you..??",true],
    2:["I am fine..",false],
  };

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
