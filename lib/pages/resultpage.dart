import 'package:codsoft_task1/controller/quizController.dart';
import 'package:codsoft_task1/pages/homepage.dart';
import 'package:codsoft_task1/utils/dimennsions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    var correctAns = Get.find<QuizController>().getCorrectAns();
    var incorrectAns = Get.find<QuizController>().getInCorrectAns();
    var incorrectOptions = Get.find<QuizController>().getIncorrectOptions();
    var correctOptions = Get.find<QuizController>().getcorrectOptions();
    var correctIncorrectOptions =
        Get.find<QuizController>().getIncorrectOptionsCorrect();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GetBuilder<QuizController>(builder: (quizController) {
            return Container(
              height: Dimension.height50,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () async {
                      quizController.removeAll();
                      showDialog(
                          barrierColor: Color.fromARGB(120, 255, 255, 255),
                          context: context,
                          builder: (context) {
                            return Center(child: CircularProgressIndicator());
                          });
                      await Future.delayed(Duration(seconds: 1));
                      Get.to(() => HomePage());
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: Dimension.icon30,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      quizController.removeAll();
                      showDialog(
                          barrierColor: Color.fromARGB(120, 255, 255, 255),
                          context: context,
                          builder: (context) {
                            return Center(child: CircularProgressIndicator());
                          });
                      await Future.delayed(Duration(seconds: 1));
                      Get.to(() => HomePage());
                    },
                    child: Icon(
                      Icons.home_outlined,
                      size: Dimension.icon30,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ).pSymmetric(
                h: Dimension.width20,
              ),
            );
          }),
          SizedBox(
            height: Dimension.height15 / 2,
          ),
          "You Scored ${correctAns.length} correct answers out of 10."
              .text
              .lineHeight(1.4)
              .fontWeight(FontWeight.w500)
              .size(Dimension.font30)
              .make()
              .pSymmetric(h: Dimension.width20),
          Divider(
            thickness: 1.2,
            color: Vx.black.withOpacity(0.6),
          ).pSymmetric(h: Dimension.width20),
          SizedBox(
            height: Dimension.height10,
          ),
          "Correct Answers"
              .text
              .fontWeight(FontWeight.w500)
              .size(Dimension.font25)
              .make()
              .pSymmetric(h: Dimension.width20),
          SizedBox(
            height: Dimension.height20,
          ),
          Expanded(
            child: correctAns.length == 0
                ? Image.asset("asset/images/crying.png").centered()
                : ListView.builder(
                    itemCount: correctAns.length,
                    itemBuilder: (context, index) {
                      return Container(
                          width: double.maxFinite,
                          height: Dimension.height100,
                          margin: EdgeInsets.only(bottom: Dimension.height10),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimension.radius10),
                              color: Vx.amber100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              "Q) ${correctAns[index].question}"
                                  .text
                                  .ellipsis
                                  .size(Dimension.font17)
                                  .make(),
                              Row(
                                children: [
                                  Container(
                                    width: Dimension.width30,
                                    height: Dimension.height30,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: const Color.fromARGB(
                                            255, 175, 226, 117)),
                                    child: Icon(
                                      Icons.done,
                                      color: Vx.white,
                                      size: Dimension.icon20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: Dimension.width15,
                                  ),
                                  "${correctOptions[index]}"
                                      .text
                                      .fontWeight(FontWeight.w500)
                                      .size(Dimension.font17 * 1.1)
                                      .make()
                                      .pOnly(bottom: Dimension.height10 / 2)
                                ],
                              )
                            ],
                          ).pOnly(left: Dimension.width10 / 2));
                    }).pSymmetric(h: Dimension.width20),
          ),
          SizedBox(
            height: Dimension.height20,
          ),
          "Incorrect Answers"
              .text
              .fontWeight(FontWeight.w500)
              .size(Dimension.font25)
              .make()
              .pSymmetric(h: Dimension.width20),
          SizedBox(
            height: Dimension.height20,
          ),
          Expanded(
            child: incorrectAns.length == 0
                ? Image.asset("asset/images/celebration1.png").centered()
                : ListView.builder(
                    itemCount: incorrectAns.length,
                    itemBuilder: (context, index) {
                      return Container(
                          width: double.maxFinite,
                          height: Dimension.height100,
                          margin: EdgeInsets.only(bottom: Dimension.height10),
                          // color: Vx.amber100,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimension.radius10),
                              color: Vx.amber100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              "Q) ${incorrectAns[index].question}"
                                  .text
                                  .ellipsis
                                  .size(Dimension.font17)
                                  .make(),
                              Row(
                                children: [
                                  Container(
                                      width: Dimension.width25,
                                      height: Dimension.height25,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromARGB(255, 248, 81, 69)),
                                      child: "X"
                                          .text
                                          .color(Vx.white)
                                          .fontWeight(FontWeight.w500)
                                          .make()
                                          .centered()),
                                  SizedBox(
                                    width: Dimension.width15,
                                  ),
                                  "${incorrectOptions[index]}"
                                      .text
                                      .fontWeight(FontWeight.w500)
                                      .size(Dimension.font17)
                                      .make()
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: Dimension.width25,
                                    height: Dimension.height25,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: const Color.fromARGB(
                                            255, 175, 226, 117)),
                                    child: Icon(
                                      Icons.done,
                                      color: Vx.white,
                                      size: Dimension.icon20 / 1.2,
                                    ),
                                  ),
                                  SizedBox(
                                    width: Dimension.width15,
                                  ),
                                  "${correctIncorrectOptions[index]}"
                                      .text
                                      .fontWeight(FontWeight.w500)
                                      .size(Dimension.font17)
                                      .make()
                                ],
                              )
                            ],
                          ).pOnly(left: Dimension.width10 / 2));
                    }).pSymmetric(h: Dimension.width20),
          )
        ],
      )),
    );
  }
}
