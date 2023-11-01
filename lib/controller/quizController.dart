import 'package:codsoft_task1/json/biologyquiz.dart';
import 'package:codsoft_task1/json/chemistryquiz.dart';
import 'package:codsoft_task1/json/computerquiz.dart';
import 'package:codsoft_task1/json/geographyquiz.dart';
import 'package:codsoft_task1/json/knowledgequiz.dart';
import 'package:codsoft_task1/json/astronomyquiz.dart';
import 'package:codsoft_task1/json/mathquiz.dart';
import 'package:codsoft_task1/json/physicsquiz.dart';
import 'package:codsoft_task1/model/quizmodel.dart';
import 'package:get/get.dart';

class QuizController extends GetxController {
  List<dynamic> _quizList = [];
  List<dynamic> get quizList => _quizList;

  List<dynamic> _chemquizList = [];
  List<dynamic> get chemquizList => _chemquizList;

  List<dynamic> _phyquizList = [];
  List<dynamic> get phyquizList => _phyquizList;

  List<dynamic> _mathquizList = [];
  List<dynamic> get mathquizList => _mathquizList;

  List<dynamic> _knowquizList = [];
  List<dynamic> get knowquizList => _knowquizList;

  List<dynamic> _bioquizList = [];
  List<dynamic> get bioquizList => _bioquizList;

  List<dynamic> _geoquizList = [];
  List<dynamic> get geoquizList => _geoquizList;

  List<dynamic> _compquizList = [];
  List<dynamic> get compquizList => _compquizList;

  List<dynamic> _astronomyquizList = [];
  List<dynamic> get astronomyquizList => _astronomyquizList;

  static int a = 0;
  static int b = 0;
  static int c = 0;
  static int d = 0;
  static int e = 0;
  static int f = 0;
  static int g = 0;
  static int h = 0;

  //computer
  List<dynamic> getComputerList() {
    print("object");
    if (g == 0) {
      _compquizList.addAll(Product.fromJson(computerdata).products);
      print(_compquizList.length);
      g++;
      _compquizList.shuffle();
    }
    return _compquizList;
  }

  //literature
  List<dynamic> getAstronomyList() {
    print("object");
    if (h == 0) {
      _astronomyquizList.addAll(Product.fromJson(astronomydata).products);
      print(_astronomyquizList.length);
      h++;
      _astronomyquizList.shuffle();
    }
    return _astronomyquizList;
  }

  //geography

  List<dynamic> getGeographyList() {
    print("object");
    if (a == 0) {
      _quizList.addAll(Product.fromJson(geographydata).products);
      print(_quizList.length);
      a++;
      _quizList.shuffle();
    }
    return _quizList;
  }

  //physics
  List<dynamic> getPhysicsQuizList() {
    print("physics");
    if (b == 0) {
      _phyquizList.addAll(Product.fromJson(physicsdata).products);
      print("lenght of phy is " + _phyquizList.length.toString());
      b++;
      _phyquizList.shuffle();
    }
    return _phyquizList;
  }

  //chemistry
  List<dynamic> getChemistryQuizList() {
    print("chemistry");
    if (c == 0) {
      _chemquizList.addAll(Product.fromJson(chemistrydata).products);
      print("lenght of phy is " + _chemquizList.length.toString());
      c++;
      _chemquizList.shuffle();
    }
    return _chemquizList;
  }

  //math
  List<dynamic> getMathQuizList() {
    print("math");
    if (d == 0) {
      _mathquizList.addAll(Product.fromJson(mathdata).products);
      print("lenght of math is " + _mathquizList.length.toString());
      d++;
      _mathquizList.shuffle();
    }
    return _mathquizList;
  }

  //biology
  List<dynamic> getBiologyQuizList() {
    print("bio");
    if (e == 0) {
      _bioquizList.addAll(Product.fromJson(biologydata).products);
      print("lenght of math is " + _bioquizList.length.toString());
      e++;
      _bioquizList.shuffle();
    }
    return _bioquizList;
  }

  //knowledge
  List<dynamic> getKnowledgeQuizList() {
    print("knowledge");
    if (f == 0) {
      _knowquizList.addAll(Product.fromJson(knowledgedata).products);
      print("lenght of math is " + _knowquizList.length.toString());
      f++;
      _knowquizList.shuffle();
    }
    return _knowquizList;
  }

  //correct answer

  List<QuizModel> correctAns = [];

  void addCorrectAns(QuizModel quiz) {
    correctAns.add(quiz);
  }

  List<QuizModel> getCorrectAns() {
    return correctAns;
  }

  //uncorrect ans
  List<QuizModel> inCorrectAns = [];

  void addInCorrectAns(QuizModel quiz) {
    inCorrectAns.add(quiz);
  }

  List<QuizModel> getInCorrectAns() {
    return inCorrectAns;
  }

  List<String> correctanswerOption = [];

  void addcorrectoption(String opt) {
    correctanswerOption.add(opt);
  }

  List<String> getcorrectOptions() {
    return correctanswerOption;
  }

  List<String> incorrectanswerOption = [];

  void addincorrectoption(String opt) {
    incorrectanswerOption.add(opt);
  }

  List<String> getIncorrectOptions() {
    return incorrectanswerOption;
  }

  List<String> IncorrectOptionCorrect = [];

  void addIncorrectOptionsCorrect(String opt) {
    IncorrectOptionCorrect.add(opt);
  }

  List<String> getIncorrectOptionsCorrect() {
    return IncorrectOptionCorrect;
  }

  void removeAll() {
    correctAns = [];
    inCorrectAns = [];
    correctanswerOption = [];
    incorrectanswerOption = [];
    IncorrectOptionCorrect = [];
  }
}
