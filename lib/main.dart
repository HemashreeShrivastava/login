import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:log_app/home_page.dart';
import 'package:http/http.dart' as http;
import 'package:log_app/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  var token = sharedPreferences.getString('token');
  print(token);
  runApp(
    MaterialApp(
      home: token == null ? LoginPage() : HomePage(),
    )
  );

}

