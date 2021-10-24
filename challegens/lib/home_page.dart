
import 'package:challegens/message.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Widgets"),
      ),
      body: Center(
        child: MaterialButton(
          minWidth: size.width,
          color: Colors.blue,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Message()));
          },
          child: const Text("All widgets"),
        ),
      ),
    );
  }
}