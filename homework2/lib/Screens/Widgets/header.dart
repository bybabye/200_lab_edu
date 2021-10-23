import 'package:flutter/material.dart';
import 'package:homework2/data/app_color.dart';
import 'package:homework2/data/app_textstyle.dart';
class Header extends StatelessWidget {
  const Header({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      color: AppColor.kBackGruondItem,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 40,
        bottom: 20,
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildIcon(Icons.arrow_back,Icons.add),
          _buildTitle("Messages"),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData iconleft, IconData iconRight) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          iconleft,
          color: AppColor.kIcon,
          size: 28,
        ),
        Icon(
          iconRight,
          color: AppColor.kIcon,
          size: 28,
        ),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Text(
      title,
      style: AppTextStyle.h1,
    );
  }
}
