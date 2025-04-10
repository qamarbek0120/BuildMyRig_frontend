import 'package:flutter/material.dart';
import 'package:prototype_app/services/api_service.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  final ApiService _apiService = ApiService();

  void _logout(BuildContext context) async {
    await _apiService.logout();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _logout(context),
          child: Text('Logout'),
        ),
      ),
    );
  }
}
