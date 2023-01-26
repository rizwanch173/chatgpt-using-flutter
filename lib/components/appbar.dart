import 'package:chat_gpt_02/constants.dart';
import 'package:flutter/material.dart';

AppBar appBarWidget() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: kPrimaryColor,
    centerTitle: true,
    title: const Text(
      'ChatGPT',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.exit_to_app,
            color: Colors.white,
          )),
      const SizedBox(
        width: kDefaultPadding / 2,
      )
    ],
  );
}
