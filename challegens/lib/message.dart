import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          color: const Color(0xFF242A37),
          height: size.height * 0.16,
          child: Stack(
            children: [
              Row(
                children: [
                  _buildAvatar(),
                  const SizedBox(
                    width: 20,
                  ),
                  _buildInfo(),
                ],
              ),
              _buildIsActive(size),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return const Expanded(
      flex: 1,
      child: CircleAvatar(
        radius: 42,
        backgroundImage: NetworkImage(
            "https://www.inlogo.vn/vnt_upload/File/Image/hinh_nen_clb_manchester_united_full_hd_13.jpg"),
      ),
    );
  }

  Widget _buildInfo() {
    return Expanded(
      flex: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("HermanPope",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),),
              Text("04:04AM",style: TextStyle(
                color: Color(0xFF4E586E),
                fontSize: 13,
              ),),
            ],
          ),
          const Text("Hey! How's it going?",style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),),
          Container(
            height: 1,
            color: Colors.black,
          )
        ],
      ),
    );
  }

  Widget _buildIsActive(Size size) {
    return Positioned(
      bottom: size.height * 0.03,
      left: size.width * 0.13,
      child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: Colors.pinkAccent,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
            ),
          ),
          child: const Center(
              child: Text(
            "3",
            style: TextStyle(
              color: Colors.white,
            ),
          ))),
    );
  }
}
