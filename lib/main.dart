import 'package:flutter/material.dart';

import 'screens/rating_user_page.dart';
import 'screens/referrals_page.dart';
import 'screens/request_rent_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intern Test - Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RequestRentPage(), //Design 01
      // home: const RatingUserPage(), //Design 02
      // home:const ReferralsPage(), //Design 03
    );
  }
}
