import 'package:auto_route/auto_route.dart';
import 'package:hogR/routes/app_router.gr.dart';
import 'package:flutter/material.dart';


@RoutePage()
class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        FirstTabRoute(),
        SecondTabRoute(),
        ThirdTabRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            final previousIndex =
                (tabsRouter.activeIndex - 1).clamp(0, tabsRouter.pageCount - 1);

            if (tabsRouter.activeIndex != previousIndex) {
              tabsRouter.setActiveIndex(previousIndex);
            } else if (tabsRouter.activeIndex == 0) {
              AutoRouter.of(context).pushNamed(
                '/landingPage',
              );
            }
          },
          child: Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (value) {

                /*if (tabsRouter.activeIndex == value) {
                  AutoRouter.of(context)
                      .popUntil((route) => tabsRouter.activeIndex == value-1);
                } else {

                }*/
                tabsRouter.setActiveIndex(value);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Text(''),
                  label: 'Tab 1',
                ),
                BottomNavigationBarItem(
                  icon: Text(''),
                  label: 'Tab 2',
                ),
                BottomNavigationBarItem(
                  icon: Text(''),
                  label: 'Tab 3',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
