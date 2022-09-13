import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  String? messageText;
  String? sender;
  bool? isMe;
  MessageBubble({this.messageText, this.sender, this.isMe});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment:isMe!?CrossAxisAlignment.end:CrossAxisAlignment.start,
            children: [
              Text(sender!),
              Material(
                borderRadius: isMe!?BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)):BorderRadius.only(
                  topRight: Radius.circular(30),bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)
                ),
                elevation: 5.0,
                color: isMe! ? Colors.blue : Colors.white,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Text(
                      messageText!,
                      style: TextStyle(fontSize: 15, color:isMe!?Colors.white:Colors.black),
                    )),
              )
            ]),
      ),
    );
  }
}
