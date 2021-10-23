
import 'package:flutter/material.dart';
import 'package:homework2/Screens/Widgets/actives_view.dart';
import 'package:homework2/Screens/Widgets/header.dart';
import 'package:homework2/data/app_color.dart';

import 'Widgets/messages_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBackGruond,
      body: Column( 
        children: [
          const Header(),
          // const SizedBox(height:0.3),
          ActivesView(),
          const SizedBox(height:0.3),
          MessagesView(),
        ],
      ),
    );
  }
}