import 'package:flutter/material.dart';

import '../helpers/colors.dart';

class LinkedInPage extends StatelessWidget {

  static const String route = '/linkedin';

  const LinkedInPage({super.key});

  static const _kFontFam = 'PersonalPortfolioIcons';
  static const String? _kFontPkg = null;


  @override
  Widget build(BuildContext context) {
    var mainTitle = 'My LinkedIn!';
    var subTitle = 'https://www.linkedin.com/in/noah-rothgaber/';
    IconData icon = const IconData(0xe803, fontFamily: _kFontFam, fontPackage: _kFontPkg); // Add the icon from the PersonalPortfolioIcons mapping

    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 80,
                color: PersonalPortfolioColors.lightBlue),
            Text(mainTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                )
            ),
            Text(subTitle, style:
            const TextStyle(
                fontSize: 40,
                color: PersonalPortfolioColors.lightBlue
            )
            ),
          ],
        )
    );
  }
}