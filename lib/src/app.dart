import 'package:flutter/material.dart';

import 'pages/slash_page/on_boarding_page.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xff8f94fb),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff8f94fb)),
      ),
      home: OnboardingPage(),
    );
  }
}
