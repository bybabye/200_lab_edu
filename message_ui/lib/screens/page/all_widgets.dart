import 'package:flutter/material.dart';
import 'package:message_ui/data/data.dart';
import 'package:message_ui/screens/widgets/actives.dart';
import 'package:message_ui/screens/widgets/avatar.dart';
import 'package:message_ui/screens/widgets/header.dart';
import 'package:message_ui/screens/widgets/mess_title.dart';
import 'package:message_ui/screens/widgets/message.dart';
import 'package:message_ui/ui/app_style.dart';

class AllWidgets extends StatelessWidget {
  AllWidgets({Key? key}) : super(key: key);
  final list = Info.data();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          const MessTitle(),
          Container(
            height: size.height * 1 / 6,
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black, width: 1)),
            ),
            child: ListView.builder(
              itemCount: list.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            Avatar(index: index),
                            if (list[index].isActive!) _buildActive(size)
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Text(
                            list[index].name!,
                            style: AppStyle.h5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Message(index: index),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildActive(Size size) {
    return Positioned(
        right: size.width * 1 / 200,
        bottom: size.height * 1 / 200,
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white)),
        ));
  }

  Widget _buildInfo(int index) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Column(
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
