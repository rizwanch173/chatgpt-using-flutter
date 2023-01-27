import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Message extends StatelessWidget {
  const Message(
      {super.key,
      required this.text,
      required this.sender,
      this.isImage = false});

  final String text;
  final String sender;
  final bool isImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: SizedBox(
            height: 25,
            width: 25,
            child: Image.asset(
                sender == "user" ? "assets/user.png" : "assets/bot.png"),
          ),
        ),
        Expanded(
          child: isImage
              ? AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    text,
                    loadingBuilder: (context, child, loadingProgress) =>
                        loadingProgress == null
                            ? child
                            : const CircularProgressIndicator.adaptive(),
                  ),
                )
              : text.trim().text.bodyText1(context).make().px8(),
        ),
      ],
    ).py8();
  }
}
