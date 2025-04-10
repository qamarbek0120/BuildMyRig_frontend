import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'http://localhost:5291/api/Auth'));

  Future<bool> login(String username, String password) async {
    try {
      Response response = await _dio.post('/login', data: {
        'Username': username,
        'Password': password,
      });

      if (response.statusCode == 200) {
        final token = response.data['token'];
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', token);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future<bool> signup(String username, String email, String password) async {
    try {
      Response response = await _dio.post('/signup', data: {
        'Username': username,
        'Email': email,
        'Password': password,
      });

      if (response.statusCode == 201 || response.statusCode == 200) {
        // Check if the response body contains a success message
        if (response.data != null && response.data['success'] == true) {
          return true;
        } else {
          print('Unexpected response format: ${response.data}');
          return false;
        }
      } else {
        print('Signup failed: ${response.data}');
        return false;
      }
    } on DioException catch (e) {
      if (e.response != null) {
        print('Signup error: ${e.response!.statusCode} - ${e.response!.data}');
      } else {
        print('Network error: ${e.message}');
      }
      return false;
    }
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }

  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token') != null;
  }
}
