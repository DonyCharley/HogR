import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';



@RoutePage()
class FifthScreen extends StatelessWidget {
   const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAGE 5'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                AutoRouter.of(context).pop();
              },
              icon: const Icon(Icons.close))
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AutoRouter.of(context).pop();
          },
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Page 5'),
              SizedBox(width: 8.0),
              Icon(Icons.close)
            ],
          ),
        ),
      ),
    );
  }
}
