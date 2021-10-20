import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.all(2),
      color: Colors.white,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 2,
        runSpacing: 2,
        children: [
          ..._getListData(40),
        ],
      ),
    );
  }

  Widget _creatContainer() {
    return Container(
      height: 100,
      width: 100,
      color: Colors.blueAccent,
    );
  }


  List<Widget> _getListData(int number) {
    List<Widget> list = [];
    for (int i = 0; i < number; i++) {
      list.add(_creatContainer());
    }
    return list;
  }
}

