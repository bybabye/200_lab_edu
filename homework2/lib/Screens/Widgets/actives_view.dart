import 'package:flutter/material.dart';
import 'package:homework2/data/app_color.dart';
import 'package:homework2/data/app_textstyle.dart';
import 'package:homework2/data/data.dart';

class ActivesView extends StatelessWidget {
  ActivesView({Key? key}) : super(key: key);
  final list = Person.generatePerson();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColor.kBackGruondItem,
      height: size.height * 0.14,
      child: ListView.builder(
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Column(
                children: [
                  Stack(
                    children: [
                      _buildAvatar(size, index),
                      if (list[index].activate == true) _buildActive(size),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    list[index].name!,
                    style: AppTextStyle.h3,
                  ),
                ],
              )),
    );
  }

  Widget _buildAvatar(Size size, int index) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20,
      ),
      height: size.height * 0.09,
      // width: size.width * 0.2,
      // decoration: BoxDecoration(
      //   shape: BoxShape.circle,
      //   image: DecorationImage(
      //     image: AssetImage(list[index].imgUrl!),
      //     fit: BoxFit.cover,
      //   )
      // ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.asset(
          list[index].imgUrl!,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildActive(Size size) {
    return Positioned(
      bottom: size.height * 0.008,
      left: size.width * 0.18,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
            )),
      ),
    );
  }
}
