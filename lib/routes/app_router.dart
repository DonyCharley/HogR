import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            path:'/landingPage',
            page: FirstRoute.page, initial: true),
        AutoRoute(
          path:'/main',
          page: DashBoardRoute.page,
          //  initial: true,
          children: [


            AutoRoute(
              path:'firstTab',
              page: RouteTwoNavigationRoute.page,
              children: [
                AutoRoute(
                    path: 'secondPage',
                    page: FirstTabRoute.page, initial: true),

                AutoRoute(
                  path: 'thirdPage',
                  page: ThirdRoute.page, ),
                AutoRoute(
                  path: 'fourthPage',
                  page: FourthRoute.page, ),


               // AutoRoute(page: Fou.page, ),

                //AutoRoute(page: SongDetailRoute.page),
              ],
            ),

            AutoRoute(
              path:'secondTab',
              page: SecondTabNavigationRoute.page,
              children: [
                AutoRoute(
                  path: 'secondTabPage',
                    page: SecondTabRoute.page,initial: true),



              ],
            ),
            AutoRoute(
              path:'thirdTab',
              page: ThirdTabNavigationRoute.page,
              children: [
                AutoRoute(
                    path:'sixthPage',page: SixthRoute.page, initial: true),
                AutoRoute(

                    path:'thirdTabPage',
                    page: ThirdTabRoute.page),




              ],
            ),

          ],
        ),
    AutoRoute(
        path:'/fifthPage',page: FifthRoute.page),

      ];
}
