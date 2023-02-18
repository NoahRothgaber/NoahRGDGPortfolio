import 'package:flutter/material.dart';
import 'package:noah_r_gdgflutter/helpers/personal_portfolio_icons_icons.dart';

import '../models/left_navigation_item.dart';
import '../pages/github_page.dart';
import '../pages/linkedin_page.dart';
import '../pages/twitter_page.dart';
import '../pages/web_page.dart';
import '../pages/welcome_page.dart';

class Utils
{
    static GlobalKey<NavigatorState> mainNav = GlobalKey();
    static GlobalKey<NavigatorState> tabNav = GlobalKey();
    static GlobalKey<ScaffoldState> mainScaffold = GlobalKey();

    static List<LeftNavigationItem> getDefaultNavItems() {
        return [
            LeftNavigationItem(
                icon: PersonalPortfolioIcons.user,
                label: 'My Profile',
                route: WelcomePage.route
            ),
            /*LeftNavigationItem(
                icon: PersonalPortfolioIcons.twitter,
                label: 'Twitter',
                route: TwitterPage.route
            ),
             */
            LeftNavigationItem(
                icon: PersonalPortfolioIcons.linkedin,
                label: 'LinkedIn',
                route: LinkedInPage.route
            ),
            /*
            LeftNavigationItem(

                icon: PersonalPortfolioIcons.web,
                label: 'Web',
                route: WebPage.route
            ),
            */
            LeftNavigationItem(
                icon: PersonalPortfolioIcons.github,
                label: 'Github',
                route: GithubPage.route
            ),
        ];
    }
}