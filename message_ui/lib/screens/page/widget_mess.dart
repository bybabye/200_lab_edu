
import 'package:flutter/material.dart';
import 'package:message_ui/screens/widgets/message.dart';

class WidgetMess extends StatelessWidget {
  const WidgetMess({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text("message"),
      ),
      body: Message(index: 0,),
    );
  }
}