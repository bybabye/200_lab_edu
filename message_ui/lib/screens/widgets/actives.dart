import 'package:flutter/material.dart';
import 'package:message_ui/data/data.dart';

// ignore: must_be_immutable
class Actives extends StatelessWidget {
  Actives({required this.index,Key? key}) : super(key: key);
  final list = Info.data();
  int index;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 0,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white
          )
        ),
        child: Center(
          child: Text(list[index].number!),
        ),
      ),
    );
  }
}
