import 'package:codsoft_task1/pages/quizpage.dart';
import 'package:codsoft_task1/utils/dimennsions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var images2 = {
    "asset/images/physics.png": "Physics",
    "asset/images/science.png": "Chemistry",
    "asset/images/math2.png": "Math",
    "asset/images/knowledge.png": "Knowledge",
    "asset/images/biology.png": "Biology",
    "asset/images/geography.png": "Geography",
  };
  var images = {
    "asset/images/comp1.png": "Computer",
    "asset/images/image1.png": "Astronomy",
  };

  bool isshow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Vx.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                VxArc(
                  height: 30,
                  edge: VxEdge.bottom,
                  child: Container(
                    width: double.maxFinite,
                    height: Dimension.height50 * 7.3,
                    color: Vx.amber100,
                  ),
                ),
                Positioned(
                  top: Dimension.height5 * 9,
                  left: Dimension.width20 / 1.2,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 21,
                        backgroundImage: AssetImage("asset/images/profile.png"),
                      ),
                      SizedBox(
                        width: Dimension.width10 / 1.2,
                      ),
                      "Faizan Ahmed"
                          .text
                          .size(Dimension.font17 * 1.1)
                          .color(const Color.fromARGB(255, 0, 0, 0))
                          .fontWeight(FontWeight.w500)
                          .make()
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: Dimension.height70 * 1.6,
                      left: Dimension.width20,
                      right: Dimension.width20),
                  width: double.maxFinite,
                  height: Dimension.height40 * 5,
                  child: Row(
                    children: [
                      Container(
                        width: Dimension.width100 * 1.99,
                        height: double.maxFinite,
                        // color: Vx.amber100,
                        child: Image.asset(
                          "asset/images/mann.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: Dimension.width25,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Lets Get started"
                                .text
                                .size(Dimension.font30 * 1.12)
                                // .color(Colors.white)

                                .lineHeight(1.4)
                                .bold
                                .make(),
                          ],
                        ).pOnly(top: Dimension.height40),
                      )
                    ],
                  ),
                ),
              ]),
              SizedBox(
                height: Dimension.height30 * 1.2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Top Quiz Categories"
                      .text
                      .bold
                      .size(Dimension.font25 / 1.1)
                      .semiBold
                      .make(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isshow = !isshow;
                      });
                      print("object");
                    },
                    child: Row(
                      children: [
                        "See more"
                            .text
                            .size(Dimension.font10)
                            .fontWeight(FontWeight.w600)
                            .make(),
                        isshow
                            ? Icon(
                                Icons.arrow_drop_up,
                                size: Dimension.icon20,
                              )
                            : Icon(
                                Icons.arrow_drop_down,
                                size: Dimension.icon20,
                              )
                      ],
                    ),
                  )
                ],
              ).pSymmetric(h: Dimension.width15),
              SizedBox(
                height: Dimension.height25,
              ),
              Wrap(
                children: List.generate(6, (index) {
                  return GestureDetector(
                    onTap: () async {
                      print("tapped " + index.toString());
                      showDialog(
                          barrierColor: Color.fromARGB(120, 255, 255, 255),
                          context: context,
                          builder: (context) {
                            return Center(child: CircularProgressIndicator());
                          });
                      await Future.delayed(Duration(seconds: 1));
                      Get.to(() => QuizPage(page: index),
                          transition: Transition.fadeIn);
                    },
                    child: Container(
                      width: Dimension.width110 * 1.06,
                      padding: EdgeInsets.all(8),
                      height: Dimension.height120 * 1.05,
                      margin: EdgeInsets.only(
                          left: Dimension.radius10, bottom: Dimension.height15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        // color: Vx.white,
                        color: index < 3
                            ? Vx.amber100
                            : Colors.grey.withOpacity(0.35),
                        // boxShadow: [
                        //   BoxShadow(
                        //       color: index < 3
                        //           ? Colors.transparent
                        //           : Colors.grey.withOpacity(0.2),
                        //       offset: Offset(1, 1),
                        //       blurRadius: 5,
                        //       spreadRadius: 1)
                        // ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(images2.keys.elementAt(index)),
                              fit: BoxFit.cover,
                            )),
                          ),
                          images2.values
                              .elementAt(index)
                              .text
                              .semiBold
                              .size(Dimension.font15)
                              .make()
                        ],
                      ),
                    ),
                  );
                }),
              ).pOnly(right: Dimension.radius10 / 1.82),
              isshow
                  ? Wrap(
                      children: List.generate(2, (index) {
                        return GestureDetector(
                          onTap: () async {
                            print("tapped " + index.toString());
                            showDialog(
                                barrierColor:
                                    Color.fromARGB(120, 255, 255, 255),
                                context: context,
                                builder: (context) {
                                  return Center(
                                      child: CircularProgressIndicator());
                                });
                            await Future.delayed(Duration(seconds: 1));
                            Get.to(() => QuizPage(page: index + 6),
                                transition: Transition.fadeIn);
                          },
                          child: Container(
                            width: Dimension.width110 * 1.06,
                            padding: EdgeInsets.all(8),
                            height: Dimension.height120 * 1.05,
                            margin: EdgeInsets.only(
                                left: Dimension.radius10,
                                bottom: Dimension.height15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                // color: Vx.white,
                                color: Vx.blue100,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      offset: Offset(1, 1),
                                      blurRadius: 5,
                                      spreadRadius: 1)
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(
                                        images.keys.elementAt(index)),
                                    fit: BoxFit.cover,
                                  )),
                                ),
                                images.values
                                    .elementAt(index)
                                    .text
                                    .semiBold
                                    .size(Dimension.font15)
                                    .make()
                              ],
                            ),
                          ),
                        );
                      }),
                    ).pOnly(right: Dimension.radius10 / 1.82)
                  : Container()
            ],
          ),
        ));
  }
}
