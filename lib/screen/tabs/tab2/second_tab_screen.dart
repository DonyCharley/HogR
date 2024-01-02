import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';


@RoutePage()
class SecondTabScreen extends StatelessWidget {
  const SecondTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAGE 2'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              AutoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AutoRouter.of(context).pushNamed(
              '/fifthPage',
            );
          },
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Page 5'),
              SizedBox(width: 8.0),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
        ),
      ),
    );
  }
}
