import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ..._getListData(6),
      ],
    );
  }

  Widget _creatContainer() {
    return Expanded(
      flex: 8,
      child: Container(
        color: Colors.blueAccent,
      ),
    );
  }

  Widget _creatContainerSpace() {
    return Expanded(
      flex: 1,
      child: Container(color: Colors.white,),
    );
  }

  List<Widget> _getListData(int number) {
    List<Widget> list = [];
    for (int i = 0; i < number; i++) {
      list.add(_creatContainer());
      if (i < number - 1) {
        list.add(_creatContainerSpace());
      }
    }
    return list;
  }
}
