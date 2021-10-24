
import 'package:flutter/material.dart';
import 'package:message_ui/screens/widgets/avatar.dart';

class WidgetAvatar extends StatelessWidget {
  const WidgetAvatar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text("avatar"),
      ),
      body: Avatar(index: 0),
    );
  }
}