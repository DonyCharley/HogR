
import 'package:flutter/material.dart';
import 'package:hogR/routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      title: 'HogR',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}
