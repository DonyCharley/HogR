
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage()
class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAGE 3'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              AutoRouter.of(context).pushNamed(
                '/main/firstTab/secondPage',
              );

            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AutoRouter.of(context).pushNamed(
              '/main/firstTab/fourthPage',
            );
          },
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Page 4'),
              SizedBox(width: 8.0),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
        ),
      ),
    );
  }
}
