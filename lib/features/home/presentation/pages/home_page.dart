import 'package:flutter/material.dart';
import '../../../../common/widgets/bottom_nav.dart';
import '../widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const HomePageBody(),
      bottomNavigationBar: const BottomNav(currentIndex: 0),
    );
  }
}
