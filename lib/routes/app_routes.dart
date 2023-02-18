import 'package:go_router/go_router.dart';
import 'package:noah_r_gdgflutter/helpers/utils.dart';
import 'package:noah_r_gdgflutter/pages/splash_page.dart';
import 'package:noah_r_gdgflutter/pages/portfoliomain_page.dart';

import '../pages/github_page.dart';
import '../pages/linkedin_page.dart';
import '../pages/twitter_page.dart';
import '../pages/web_page.dart';
import '../pages/welcome_page.dart';

class AppRoutes
{
    static final router = GoRouter(
        initialLocation: SplashPage.route,
        navigatorKey: Utils.mainNav,
        routes: [
            GoRoute(
                parentNavigatorKey: Utils.mainNav,
                path: SplashPage.route,
                builder: (context, state) => const SplashPage(),
            ),
            ShellRoute(
                navigatorKey: Utils.tabNav,
                builder: ((context, state, child) {
                  return PortfolioMainPage(child: child);
                }),
                routes: [
                  GoRoute(
                      parentNavigatorKey: Utils.tabNav,
                      path: WelcomePage.route,
                      pageBuilder: (context, state) {
                        return const NoTransitionPage(
                            child: WelcomePage()
                        );
                      }
                  ),
                  /*GoRoute(
                      parentNavigatorKey: Utils.tabNav,
                      path: TwitterPage.route,
                      pageBuilder: (context, state) {
                        return const NoTransitionPage(
                            child: TwitterPage()
                        );
                      }
                  ),
                   */
                  GoRoute(
                      parentNavigatorKey: Utils.tabNav,
                      path: LinkedInPage.route,
                      pageBuilder: (context, state) {
                        return const NoTransitionPage(
                            child: LinkedInPage()
                        );
                      }
                  ),
                  /*GoRoute(
                      parentNavigatorKey: Utils.tabNav,
                      path: WebPage.route,
                      pageBuilder: (context, state) {
                        return const NoTransitionPage(
                            child: WebPage()
                        );
                      }
                  ),
                  */
                  GoRoute(
                      parentNavigatorKey: Utils.tabNav,
                      path: GithubPage.route,
                      pageBuilder: (context, state) {
                        return const NoTransitionPage(
                            child: GithubPage()
                        );
                      }
                  )


                ]
            )
    ]
    );
}