import 'package:flutter/material.dart';
import 'package:movies/app/presentation/routes/routes.dart';

import '../widgets/custom_entrie_selector.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomEntrieSelector(
              text: 'Movies',
              onPressed: () => Navigator.pushNamed(context, Routes.movies),
            ),
            const SizedBox(height: 20),
            CustomEntrieSelector(
              text: 'Series',
              onPressed: () => Navigator.pushNamed(context, Routes.series),
            ),
          ],
        ),
      ),
    );
  }
}
