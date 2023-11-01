import 'package:codsoft_task1/controller/quizController.dart';
import 'package:codsoft_task1/pages/homepage.dart';
import 'package:codsoft_task1/pages/resultpage.dart';
import 'package:codsoft_task1/utils/dimennsions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:velocity_x/velocity_x.dart';

// ignore: must_be_immutable
class QuizPage extends StatefulWidget {
  int page;
  QuizPage({super.key, required this.page});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  bool isbutton1 = false;

  bool isbutton2 = false;

  bool isbutton3 = false;

  bool isbutton4 = false;

  int a = 0;
  int b = 1;

  String ans = "";

  @override
  Widget build(BuildContext context) {
    var quiz = Get.find<QuizController>().getGeographyList();

    var img = "asset/images/science.png";

    if (widget.page == 1) {
      quiz = Get.find<QuizController>().getChemistryQuizList();
    } else if (widget.page == 0) {
      quiz = Get.find<QuizController>().getPhysicsQuizList();
      img = "asset/images/physics.png";
    } else if (widget.page == 2) {
      quiz = Get.find<QuizController>().getMathQuizList();
      img = "asset/images/math2.png";
    } else if (widget.page == 3) {
      quiz = Get.find<QuizController>().getKnowledgeQuizList();
      img = "asset/images/knowledge.png";
    } else if (widget.page == 4) {
      quiz = Get.find<QuizController>().getBiologyQuizList();
      img = "asset/images/biology.png";
    } else if (widget.page == 5) {
      quiz = Get.find<QuizController>().getGeographyList();
      img = "asset/images/geography.png";
    } else if (widget.page == 6) {
      quiz = Get.find<QuizController>().getComputerList();
      img = "asset/images/comp1.png";
    } else if (widget.page == 7) {
      quiz = Get.find<QuizController>().getAstronomyList();
      img = "asset/images/image1.png";
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 249, 249),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Dimension.height10 / 2,
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    width: Dimension.width130,
                    height: Dimension.height120 * 1.1,
                    // decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //         image: AssetImage(img), fit: BoxFit.cover)),
                    child: Image.asset(img),
                  ),
                ),
                Positioned(
                  left: Dimension.width20 / 1.3,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => HomePage());
                    },
                    child: Icon(
                      Icons.arrow_back_rounded,
                      size: Dimension.icon30 * 1.1,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Dimension.height25,
            ),
            Container(
              width: double.maxFinite,
              height: Dimension.height100 * 1.82,
              margin: EdgeInsets.only(
                left: Dimension.width10 * 1.6,
                right: Dimension.width10 * 1.6,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(2, 4)),
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(2, -4))
                  ],
                  // color: Vx.amber100
                  color: Vx.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      "Question"
                          .text
                          .size(Dimension.font17)
                          .color(Colors.blueAccent)
                          .make(),
                      SizedBox(
                        width: Dimension.width10,
                      ),
                      b
                          .toString()
                          .text
                          .size(Dimension.font20)
                          .color(Colors.blueAccent)
                          .bold
                          .make(),
                      SizedBox(
                        width: Dimension.width10 / 2,
                      ),
                      "/"
                          .text
                          .size(Dimension.font15)
                          .color(Colors.blueAccent)
                          .make(),
                      SizedBox(
                        width: Dimension.width10 / 2,
                      ),
                      "10"
                          .text
                          .size(Dimension.font15)
                          .color(Colors.blueAccent)
                          .make(),
                    ],
                  ).marginOnly(left: Dimension.width20 * 4),
                  "${quiz[a].question}?".text.size(Dimension.font20).make()
                ],
              ).pSymmetric(h: Dimension.height25),
            ),
            SizedBox(
              height: Dimension.height25,
            ),
            Container(
              width: double.maxFinite,
              height: Dimension.height100 * 3.4,
              // color: Vx.amber100,
              // margin: EdgeInsets.only(top: Dimension.height100 / 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isbutton1 = !isbutton1;
                        isbutton2 = false;
                        isbutton3 = false;
                        isbutton4 = false;
                        ans = "a";
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(Dimension.width4),
                      width: double.maxFinite,
                      height: Dimension.height70 / 1.2,
                      decoration: BoxDecoration(
                          color: Vx.white,
                          border: Border.all(
                            width: isbutton1 ? 3 : 2,
                            color: isbutton1
                                ? Colors.blueAccent
                                : Colors.grey.withOpacity(0.5),
                          ),
                          borderRadius:
                              BorderRadius.circular(Dimension.radius10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          quiz[a]
                              .option1
                              .toString()
                              .text
                              .size(Dimension.font17)
                              .make(),
                          Container(
                            padding: EdgeInsets.all(Dimension.width4 / 2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                color: isbutton1
                                    ? Colors.transparent
                                    : Colors.grey.withOpacity(0.5),
                              ),
                              color:
                                  isbutton1 ? Colors.blueAccent : Colors.white,
                            ),
                            child: Icon(
                              Icons.done,
                              size: Dimension.icon20 / 1.1,
                              color: isbutton1
                                  ? const Color.fromARGB(255, 255, 255, 255)
                                  : Colors.transparent,
                            ),
                          )
                        ],
                      ).pOnly(
                          right: Dimension.height10, left: Dimension.width15),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isbutton2 = !isbutton2;
                        isbutton1 = false;
                        isbutton3 = false;
                        isbutton4 = false;
                        ans = "b";
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(Dimension.width4),
                      margin: EdgeInsets.only(top: Dimension.height10),
                      width: double.maxFinite,
                      height: Dimension.height70 / 1.2,
                      decoration: BoxDecoration(
                          color: Vx.white,
                          border: Border.all(
                            width: isbutton2 ? 3 : 2,
                            color: isbutton2
                                ? Colors.blueAccent
                                : Colors.grey.withOpacity(0.5),
                          ),
                          borderRadius:
                              BorderRadius.circular(Dimension.radius10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          quiz[a]
                              .option2
                              .toString()
                              .text
                              .size(Dimension.font17)
                              .make(),
                          Container(
                            padding: EdgeInsets.all(Dimension.width4 / 2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                color: isbutton2
                                    ? Colors.transparent
                                    : Colors.grey.withOpacity(0.5),
                              ),
                              color:
                                  isbutton2 ? Colors.blueAccent : Colors.white,
                            ),
                            child: Icon(
                              Icons.done,
                              size: Dimension.icon20 / 1.1,
                              color: isbutton2
                                  ? const Color.fromARGB(255, 255, 255, 255)
                                  : Colors.transparent,
                            ),
                          )
                        ],
                      ).pOnly(
                          right: Dimension.height10, left: Dimension.width15),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isbutton3 = !isbutton3;
                        isbutton2 = false;
                        isbutton1 = false;
                        isbutton4 = false;
                        ans = "c";
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(Dimension.width4),
                      margin: EdgeInsets.only(top: Dimension.height10),
                      width: double.maxFinite,
                      height: Dimension.height70 / 1.2,
                      decoration: BoxDecoration(
                          color: Vx.white,
                          border: Border.all(
                            width: isbutton3 ? 3 : 2,
                            color: isbutton3
                                ? Colors.blueAccent
                                : Colors.grey.withOpacity(0.5),
                          ),
                          borderRadius:
                              BorderRadius.circular(Dimension.radius10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          quiz[a]
                              .option3
                              .toString()
                              .text
                              .size(Dimension.font17)
                              .make(),
                          Container(
                            padding: EdgeInsets.all(Dimension.width4 / 2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                color: isbutton3
                                    ? Colors.transparent
                                    : Colors.grey.withOpacity(0.5),
                              ),
                              color:
                                  isbutton3 ? Colors.blueAccent : Colors.white,
                            ),
                            child: Icon(
                              Icons.done,
                              size: Dimension.icon20 / 1.1,
                              color: isbutton3
                                  ? const Color.fromARGB(255, 255, 255, 255)
                                  : Colors.transparent,
                            ),
                          )
                        ],
                      ).pOnly(
                          right: Dimension.height10, left: Dimension.width15),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isbutton4 = !isbutton4;
                        isbutton2 = false;
                        isbutton3 = false;
                        isbutton1 = false;
                        ans = "d";
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(Dimension.width4),
                      margin: EdgeInsets.only(top: Dimension.height10),
                      width: double.maxFinite,
                      height: Dimension.height70 / 1.2,
                      decoration: BoxDecoration(
                          color: Vx.white,
                          border: Border.all(
                            width: isbutton4 ? 3 : 2,
                            color: isbutton4
                                ? Colors.blueAccent
                                : Colors.grey.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          quiz[a]
                              .option4
                              .toString()
                              .text
                              .size(Dimension.font17)
                              .make(),
                          Container(
                            padding: EdgeInsets.all(Dimension.width4 / 2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                color: isbutton4
                                    ? Colors.transparent
                                    : Colors.grey.withOpacity(0.5),
                              ),
                              color:
                                  isbutton4 ? Colors.blueAccent : Colors.white,
                            ),
                            child: Icon(
                              Icons.done,
                              size: Dimension.icon20 / 1.1,
                              color: isbutton4
                                  ? const Color.fromARGB(255, 255, 255, 255)
                                  : Colors.transparent,
                            ),
                          )
                        ],
                      ).pOnly(
                          right: Dimension.height10, left: Dimension.width15),
                    ),
                  ),
                  GetBuilder<QuizController>(builder: (quizController) {
                    return GestureDetector(
                      onTap: () {
                        print("tapped");
                        if (isbutton1 == false &&
                            isbutton2 == false &&
                            isbutton3 == false &&
                            isbutton4 == false) {
                          setState(() {
                            Get.snackbar("Error", "Select an option",
                                backgroundColor: Colors.red,
                                colorText: Vx.white);
                          });
                        } else {
                          setState(() {
                            if (ans == quiz[a].ans) {
                              print("correct ans");
                              quizController.addCorrectAns(quiz[a]);
                              if (ans == "a") {
                                quizController
                                    .addcorrectoption(quiz[a].option1);
                              } else if (ans == "b") {
                                quizController
                                    .addcorrectoption(quiz[a].option2);
                              } else if (ans == "c") {
                                quizController
                                    .addcorrectoption(quiz[a].option3);
                              } else {
                                quizController
                                    .addcorrectoption(quiz[a].option4);
                              }
                            } else {
                              print("uncorrect ans");
                              quizController.addInCorrectAns(quiz[a]);
                              if (ans == "a") {
                                quizController
                                    .addincorrectoption(quiz[a].option1);
                              } else if (ans == "b") {
                                quizController
                                    .addincorrectoption(quiz[a].option2);
                              } else if (ans == "c") {
                                quizController
                                    .addincorrectoption(quiz[a].option3);
                              } else {
                                quizController
                                    .addincorrectoption(quiz[a].option4);
                              }

                              if (quiz[a].ans == "a") {
                                quizController.addIncorrectOptionsCorrect(
                                    quiz[a].option1);
                              } else if (quiz[a].ans == "b") {
                                quizController.addIncorrectOptionsCorrect(
                                    quiz[a].option2);
                              } else if (quiz[a].ans == "c") {
                                quizController.addIncorrectOptionsCorrect(
                                    quiz[a].option3);
                              } else {
                                quizController.addIncorrectOptionsCorrect(
                                    quiz[a].option4);
                              }
                            }

                            print("Ans is " + ans);
                            print("A is " + a.toString());
                            if (a < quiz.length - 1) {
                              a++;

                              isbutton1 = false;
                              isbutton2 = false;
                              isbutton3 = false;
                              isbutton4 = false;
                            }
                            b++;
                            if (b == 11) {
                              Get.to(() => ResultPage(),
                                  transition: Transition.fadeIn);
                            }
                          });
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: Dimension.height20),
                        width: Dimension.width100,
                        height: Dimension.height50,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimension.radius20 * 2),
                            color: Colors.blueAccent),
                        child: "Next"
                            .text
                            .size(Dimension.font17)
                            .bold
                            .letterSpacing(3)
                            .color(Vx.white)
                            .make()
                            .centered(),
                      ),
                    );
                  })
                ],
              ).marginSymmetric(horizontal: Dimension.width4 * 10),
            )
          ],
        ),
      ),
    );
  }
}
