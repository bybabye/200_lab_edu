import 'package:flutter/material.dart';
import 'package:message_ui/screens/widgets/header.dart';

class WidgetHeader extends StatelessWidget {
  const WidgetHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text("Header"),
      ),
      body: const Header(),
    );
  }
}
