import 'package:flutter/material.dart';
import 'package:simply_delivery/presentation/login_page/login_page.dart';
import 'package:simply_delivery/presentation/order_info_page/order_info_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        title: 'Simply pick',
        home:
            //LandingPage()
            //LoginPage(),
            OrderInfoPage(),
      );
}
