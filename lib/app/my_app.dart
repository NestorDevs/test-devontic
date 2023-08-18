import 'package:flutter/material.dart';
import 'package:movies/app/data/services/data_provider.dart';
import 'package:movies/app/presentation/routes/app_routes.dart';
import 'package:movies/app/presentation/routes/routes.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splash,
        routes: appRoutes,
      ),
    );
  }
}
