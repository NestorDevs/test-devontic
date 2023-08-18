import 'package:flutter/material.dart';
import 'package:movies/app/presentation/routes/routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      _goTo();
    });
  }

  void _goTo() {
    Navigator.pushReplacementNamed(context, Routes.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/placeholder.png',
              color: Colors.black87,
              width: 350,
            ),
            const CircularProgressIndicator.adaptive(
              backgroundColor: Colors.black87,
            )
          ],
        ),
      ),
    );
  }
}
