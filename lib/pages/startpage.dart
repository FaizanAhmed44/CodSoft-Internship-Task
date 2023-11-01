import 'package:codsoft_task1/pages/homepage.dart';
import 'package:codsoft_task1/utils/dimennsions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: Dimension.height100,
          ),
          Container(
            width: Dimension.width50 * 6.5,
            height: Dimension.height100 * 3.5,
            // decoration: BoxDecoration(
            // image: DecorationImage(
            //     image: AssetImage("asset/images/quiz1.jpg"),
            //     fit: BoxFit.cover)),
            child: Image.asset("asset/images/quiz1.jpg"),
          ),
          SizedBox(
            height: Dimension.height100,
          ),
          GestureDetector(
            onTap: () async {
              showDialog(
                  barrierColor: Color.fromARGB(120, 255, 255, 255),
                  context: context,
                  builder: (context) {
                    return Center(child: CircularProgressIndicator());
                  });
              await Future.delayed(Duration(seconds: 1));
              Get.to(() => HomePage(), transition: Transition.fadeIn);
            },
            child: Container(
              width: double.maxFinite,
              height: Dimension.height70,
              margin: EdgeInsets.only(
                  left: Dimension.width4 * 11, right: Dimension.width4 * 11),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(Dimension.radius15 * 5)),
              child: "Start"
                  .text
                  .size(Dimension.font30 * 1.1)
                  .letterSpacing(2)
                  .bold
                  .color(Vx.white)
                  .make()
                  .centered(),
            ),
          )
        ]),
      ),
    );
  }
}
