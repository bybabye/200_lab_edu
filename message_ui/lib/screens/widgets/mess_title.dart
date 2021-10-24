import 'package:flutter/material.dart';
import 'package:message_ui/ui/app_style.dart';

class MessTitle extends StatelessWidget {
  const MessTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 16),
      height: size.height * 1 / 14,
      alignment: Alignment.centerLeft,
      child: const Text('Messages', style: AppStyle.h3),
    );
  }
}
