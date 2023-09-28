import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:profile/provider/auth_provider.dart';
import 'package:profile/screen/splash_screen.dart';
import 'package:profile/screens/welcome_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        title: "FlutterPhoneAuth",
      ),
    );
  }
}
