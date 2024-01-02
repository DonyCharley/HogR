import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_route/auto_route.dart';

import '../../../appControllers/base_controllers.dart';

@RoutePage()
class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> with BaseController {
  @override
  void initState() {
    super.initState();
    tab1C.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PAGE 4'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                //AutoRouter.of(context).pop();
                AutoRouter.of(context).pushNamed(
                  '/main/firstTab/thirdPage',
                );
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: _buildListView());
  }

  Widget _buildListView() {
    return Obx(
      () => ListView.builder(
        itemCount: tab1C.items.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Card(
            child: SizedBox(
                height: 100,
                child: Center(
                    child: Text(
                        tab1C.items[index].toString().replaceAll(".", " ")))),
          ));
        },
      ),
    );
  }
}
