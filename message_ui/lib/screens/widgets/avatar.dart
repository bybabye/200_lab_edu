import 'package:flutter/material.dart';
import 'package:message_ui/data/data.dart';

// ignore: must_be_immutable
class Avatar extends StatelessWidget {
  Avatar({required this.index,Key? key}) : super(key: key);
  int index;
  final list = Info.data();
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 42,
      backgroundImage: AssetImage(list[index].image!),
    );
  }
}
