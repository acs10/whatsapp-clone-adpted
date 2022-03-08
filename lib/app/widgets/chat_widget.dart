import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  final String lastTalk;
  final int qtdNewMessages;

  const ChatWidget({required this.lastTalk, required this.qtdNewMessages});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/avatar2.jpg')),
      title: Text(
        'Grennda Guerra',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        'Nice to meet you',
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        children: <Widget>[
          Text(
            lastTalk,
            style: TextStyle(
                color: qtdNewMessages > 0
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).textTheme.bodyText2?.color),
          ),
          SizedBox(
            height: 5,
          ),
          if (qtdNewMessages > 0)
            Container(
              padding: EdgeInsets.all(5),
              decoration:
                  BoxDecoration(color: Colors.green, shape: BoxShape.circle),
              child: Text(qtdNewMessages.toString(),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            )
        ],
      ),
    );
  }
}
