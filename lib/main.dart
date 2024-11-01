import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'presentation/onboarding_page/onbarding_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle style = GoogleFonts.amaranth();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SpendSmart',
      theme: ThemeData(
        listTileTheme: ListTileThemeData(titleTextStyle: style),
        textTheme: TextTheme(bodyMedium: style, bodySmall: style),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnbardingPage(),
    );
  }
}
