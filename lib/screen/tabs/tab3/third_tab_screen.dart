import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ThirdTabScreen extends StatelessWidget {
  const ThirdTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: const Text('PAGE 2'),centerTitle: true,

        leading: IconButton(
            onPressed: () {
             // AutoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {

                AutoRouter.of(context).pushNamed( '/fifthPage',);
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
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed( '/main/thirdTab/sixthPage',);

              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Page 6'),
                  SizedBox(width: 8.0),
                  Icon(Icons.keyboard_arrow_right)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
