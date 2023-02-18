import 'package:flutter/material.dart';
import 'package:noah_r_gdgflutter/helpers/utils.dart';

import '../helpers/colors.dart';
import '../widgets/left_navigation.dart';

class PortfolioMainPage extends StatelessWidget
{
    static const String route = '/main';
    final Widget child;
    const PortfolioMainPage(
        {
            super.key,
            required this.child
        });

    @override
    Widget build(BuildContext context)
    {
        return Scaffold(
            key: Utils.mainScaffold,
            body: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          PersonalPortfolioColors.orange,
                          PersonalPortfolioColors.secondaryBlue
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                    )
                ),
                child: Stack(
                    children: [
                    Center(child: child
                    ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: LeftNavigation(),
                      ),
                ],
                )
            )
        );
    }
}