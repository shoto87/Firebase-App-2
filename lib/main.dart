import 'package:app_using_firebase/features/app/splash_screen/splash_screen.dart';
import 'package:app_using_firebase/features/user_auth/presentation/pages/LoginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBbr7cyf8hzgfQtpj9oCB7W5KChVJSB0bw",
            appId: "1:735297987704:web:fe51f6633d1160b489b98d",
            messagingSenderId: "735297987704",
            projectId: "fir-app-ef465"));
  }
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase',
      home: SplashScreen(
        child: LoginPage(),
      ),
    );
  }
}
