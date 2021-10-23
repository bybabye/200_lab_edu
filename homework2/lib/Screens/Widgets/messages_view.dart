import 'package:flutter/material.dart';
import 'package:homework2/data/app_color.dart';
import 'package:homework2/data/app_textstyle.dart';
import 'package:homework2/data/data.dart';

class MessagesView extends StatelessWidget {
  MessagesView({Key? key}) : super(key: key);
  final list = Person.generatePerson();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.6,
      color: AppColor.kBackGruondItem,
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildAvt(index),
                  const SizedBox(
                    width: 20,
                  ),
                  _buildInfomation(index),
                ],
              ),
              if(list[index].number != "0")
                _buildActives(size,index),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAvt(int index) {
    return Expanded(
      flex: 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.asset(
          list[index].imgUrl!,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildActives(Size size,int index) {
    return Positioned(
      bottom: size.height * 0.018,
      left: size.width * 0.09,
      child: Container(
        alignment: Alignment.center,
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            color: Colors.pinkAccent,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
            )),
        child: Text(list[index].number!,style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }

  Widget _buildInfomation(int index) {
    return Expanded(
      flex: 5,
      child: SizedBox(
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  list[index].name!,
                  style: AppTextStyle.h2,
                ),
                Text(
                  list[index].time!,
                  style: AppTextStyle.h5,
                )
              ],
            ),
            Text(
              list[index].message!,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.h3,
            ),
            Container(
              height: 1,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
