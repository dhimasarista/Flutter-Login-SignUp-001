import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/login_page.dart';
import 'pages/signup_page.dart';
import 'pages/welcome_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
  // Main Color Code #25657B or Color(0xff25657b).
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          androidOverscrollIndicator: AndroidOverscrollIndicator.glow),
      title: "Login-Signup App",
      initialRoute: WelcomePage.routedName,
      routes: {
        WelcomePage.routedName: (context) => const WelcomePage(),
        LoginPage.routedName: (context) => const LoginPage(),
        SignupPage.routedName: (context) => const SignupPage(),
      },
    );
  }
}
