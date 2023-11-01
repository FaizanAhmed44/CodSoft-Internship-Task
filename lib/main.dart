// import 'package:codsoft_task1/pages/homepage.dart';
// import 'package:codsoft_task1/pages/quizpage.dart';
// import 'package:codsoft_task1/pages/resultpage.dart';
import 'package:codsoft_task1/pages/aesi.dart';
import 'package:codsoft_task1/pages/startpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        home: StartPage());
  }
}
