import 'package:flutter/material.dart';
import 'package:message_ui/data/data.dart';
import 'package:message_ui/ui/app_style.dart';

import 'actives.dart';
import 'avatar.dart';

// ignore: must_be_immutable
class Message extends StatelessWidget {
  Message({required this.index, Key? key}) : super(key: key);
  final list = Info.data();
  int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Avatar(index: index),
            if (list[index].number != "0") Actives(index: index),
          ],
        ),
        _buildInfo(index),
        _buildTime(index),
      ],
    );
  }


  Widget _buildInfo(int index) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              list[index].name!,
              style: AppStyle.h4,
            ),
            Text(
              list[index].lastMessage!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyle.h52,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTime(int index) {
    return Opacity(
      opacity: 0.75,
      child: Text(
        list[index].time!,
        maxLines: 1,
        style: AppStyle.h52,
      ),
    );
  }
}
