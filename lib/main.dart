import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(TenantApp());
}

class TenantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tenant System',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: LoginScreen(),
    );
  }
}
