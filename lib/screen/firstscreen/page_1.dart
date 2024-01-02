
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage()

class FirstScreen extends StatelessWidget  {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAGE 1'),
        centerTitle: true,
        automaticallyImplyLeading: false,

      ),
      body: Center(
          child: ElevatedButton(
        //clipBehavior: Clip.hardEdge,
        onPressed: () {
         //page1C.navigateToPage2(context);
          AutoRouter.of(context).pushNamed('/main');
        },
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Page 2'),
            SizedBox(width: 8.0),
            Icon(Icons.keyboard_arrow_right)
          ],
        ),
      )),
    );
  }
}
