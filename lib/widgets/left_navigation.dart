import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:noah_r_gdgflutter/services/left_navigation_service.dart';
import 'package:provider/provider.dart';

import '../helpers/colors.dart';
import '../helpers/utils.dart';

class LeftNavigation extends StatelessWidget {
  const LeftNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.25),
                  Colors.transparent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            )
        ),
        padding: const EdgeInsets.all(20),
        child: Consumer<LeftNavigationService>(
            builder: (context, navService, child) {
              return Column(
                children: List.generate(
                    navService.navItems.length, (index) {
                  var navItem = navService.navItems[index];
                  var navItemColor = navItem.isSelected ?
                  Colors.white : PersonalPortfolioColors.lightBlue;

                  return Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 20),
                    child: IconButton(
                        iconSize: 30,
                        icon: Icon(
                          navItem.icon,
                          color: navItemColor,
                        ),
                        onPressed: () {
                          navService.selectNavItem(navItem);
                          // TODO: perform the navigation
                        }
                    ),
                  );
                }
                ),
              );
            }
        )
    );
  }
}