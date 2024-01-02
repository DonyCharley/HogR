
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';



@RoutePage()
class SixthScreen extends StatelessWidget {
  const SixthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PAGE 6'),centerTitle: true,
        leading: IconButton(
            onPressed: () {
              //AutoRouter.of(context).pop();
              AutoRouter.of(context).pushNamed( '/main/thirdTab/thirdTabPage',);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
           //page6C.navigateToTab2();
            AutoRouter.of(context).pushNamed( '/main/secondTab',);
           // AutoRouter.of(context).replaceNamed('/main/song');
            
          //   AutoRouter.of(context).replaceNamed(path)
          },
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Tab 2'),
              SizedBox(width: 8.0),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
        ),
      ),
    );
  }
}
