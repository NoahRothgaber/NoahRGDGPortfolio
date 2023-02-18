import 'package:flutter/material.dart';

import '../helpers/colors.dart';

class GithubPage extends StatelessWidget {

  static const String route = '/github';

  static const _kFontFam = 'PersonalPortfolioIcons';
  static const String? _kFontPkg = null;

  const GithubPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mainTitle = 'My GitHub!';
    var subTitle = 'https://github.com/NoahRothgaber';
    IconData icon = const IconData(0xe802, fontFamily: _kFontFam, fontPackage: _kFontPkg); // Add the icon from the PersonalPortfolioIcons mapping

    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 70,
                color: Colors.black),
            Text(mainTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey
                )
            ),
            Text(subTitle, style:
            const TextStyle(
                fontSize: 40,
                color: Colors.lightGreenAccent
            )
            ),
          ],
        )
    );
  }
}