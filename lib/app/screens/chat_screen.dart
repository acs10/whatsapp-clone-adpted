import 'package:flutter/material.dart';
import '../widgets/chat_widget.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (_, __) => Divider(),
        itemCount: 20,
        itemBuilder: (_, index) {
          return ChatWidget(
            lastTalk: index % 3 == 0 ? 'Ontem' : '23:59',
            qtdNewMessages: index % 2 == 0 ? index : 0,
          );
        });
  }
}
