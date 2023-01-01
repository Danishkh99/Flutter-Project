import 'package:flutter/material.dart';

import '../../../core/constant/constants.dart';
import '../../../models/ChatMessage.dart';
import 'chatInput_field.dart';
import 'message.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) => Message(
                message: demeChatMessages[index],
              ),
            ),
          ),
        ),
        const ChatInputField(),
      ],
    );
  }
}



