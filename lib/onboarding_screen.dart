import 'package:flutter/material.dart';
import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:onboarding/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  static final headingStyle = TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.w700,
  );
  final List<PageModel> pageList = [
    pageModel(
      Colors.indigo.shade300,
      'assets/images/hotel.png',
      'Hotels',
      'All hotels and hostels are sorted by hospitality rating',
      'assets/images/hotel_icon.png',
    ),
    pageModel(
      Colors.orange.shade300,
      'assets/images/money.png',
      'Pay',
      'Pay for services with convienience',
      'assets/images/money_icon.png',
    ),
    pageModel(
      Colors.orange.shade300,
      'assets/images/store.png',
      'Stores',
      'Shop for all you wish from our up-to-date and state-of-the-art stores.',
      'assets/images/store_icon.png',
    ),
  ];

  static pageModel(Color color, String heroAssetPath, String title, String body,
      String iconAssetPath) {
    return PageModel(
      color: color,
      heroAssetPath: heroAssetPath,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: Text(
        body,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
      iconAssetPath: iconAssetPath,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FancyOnBoarding(
        pageList: pageList,
        doneButtonText: 'DONE',
        skipButtonText: 'SKIP',
        onDoneButtonPressed: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        ),
      ),
    );
  }
}
