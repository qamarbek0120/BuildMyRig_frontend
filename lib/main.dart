import 'package:flutter/material.dart';
import 'package:prototype_app/screens/home_screen.dart';
import 'package:prototype_app/screens/login_screen.dart';
import 'package:prototype_app/screens/signup_screen.dart';
import 'package:prototype_app/services/api_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final ApiService apiService = ApiService();
  bool isLoggedIn = await apiService.isLoggedIn();

  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  MyApp({required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLoggedIn ? HomeScreen() : SignupScreen(),
    );
  }
}
