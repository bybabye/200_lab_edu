import 'package:flutter/material.dart';
import 'package:message_ui/screens/page/all_widgets.dart';
import 'package:message_ui/screens/page/widget_avatar.dart';
import 'package:message_ui/screens/page/widget_header.dart';
import 'package:message_ui/screens/page/widget_mess.dart';
import 'package:message_ui/screens/page/widget_title.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', theme: ThemeData(), home: const Myhome());
  }
}

class Myhome extends StatelessWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Widgets"),
      ),
      body: ListView(
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const WidgetHeader()));
            },
            color: Colors.blue,
            child: const Text("Header"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const WidgetTitle()));
            },
            color: Colors.blue,
            child: const Text("Title"),
          ),
          MaterialButton(
            onPressed: () {
               Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const WidgetAvatar()));
            },
            color: Colors.blue,
            child: const Text("avatar"),
          ),
          MaterialButton(
            onPressed: () {
               Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const WidgetMess()));
            },
            color: Colors.blue,
            child: const Text("mess"),
          ),
          MaterialButton(
            onPressed: () {
               Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AllWidgets()));
            },
            color: Colors.blue,
            child: const Text("all widget"),
          ),
          
        ],
      ),
      
    );
  }
}
