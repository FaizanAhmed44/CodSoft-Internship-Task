import 'package:codsoft_task1/controller/quizController.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => QuizController());
}
