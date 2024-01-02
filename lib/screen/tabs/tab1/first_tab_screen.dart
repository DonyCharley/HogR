import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage()
class FirstTabScreen extends StatelessWidget {
  const FirstTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: const Text('PAGE 2'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {


                AutoRouter.of(context).pushNamed(  '/main/firstTab/thirdPage');

              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Page 3'),
                  SizedBox(width: 8.0),
                  Icon(Icons.keyboard_arrow_right)
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _showPopup(context);
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Popup 1'),
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
_showPopup(BuildContext context) {
 return showDialog(
     context: context,
     barrierDismissible: false,
     builder: (BuildContext context)
 {
  return Container(
     padding: const EdgeInsets.all(10),
     decoration: const BoxDecoration(
         borderRadius: BorderRadius.only(
           topLeft: Radius.circular(8),
           topRight: Radius.circular(8),
           bottomLeft: Radius.circular(8),
           bottomRight: Radius.circular(8),
         ),
         boxShadow: [
           BoxShadow(
               color: Color.fromRGBO(0, 0, 0, 0.11999999731779099),
               offset: Offset(0, 2),
               blurRadius: 8)
         ],
         color: Colors.transparent),
     child: AlertDialog(
       title: Align(
           alignment: Alignment.topRight,
           child: IconButton(
             icon: const Icon(Icons.close),
             color: Colors.black,
             iconSize: 30,
             onPressed: () {
               AutoRouter.of(context).pop();
             },
           )),
       content: const Text('Pop up 1',
           textAlign: TextAlign.center,
           style: TextStyle(
             fontFamily: 'Montserrat',
             fontSize: 22,
           )),
       actionsAlignment: MainAxisAlignment.spaceBetween,
       actions: [
         ElevatedButton(
             onPressed: () {
               AutoRouter.of(context).pop();
               AutoRouter.of(context).pushNamed('/main/firstTab/thirdPage');

               // tab1C.navigateToPage3(context);
             },
             style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.black,
                 textStyle: const TextStyle(
                     fontSize: 14, fontWeight: FontWeight.bold)),
             child: const Text(
               "Page 3",
               style: TextStyle(color: Colors.white),
             )),
         ElevatedButton(
             onPressed: () {
               AutoRouter.of(context).pop();
               AutoRouter.of(context).pushNamed('/main/secondTab',);

               // tab1C.navigateToPage2(context);
             },
             style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.black,
                 // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                 textStyle: const TextStyle(
                     fontSize: 14, fontWeight: FontWeight.bold)),
             child: const Text(
               "Tab 2",
               style: TextStyle(color: Colors.white),
             ))
       ],
     ),
   );
 });
}