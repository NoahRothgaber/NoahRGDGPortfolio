import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../helpers/utils.dart';
import '../models/left_navigation_item.dart';

class LeftNavigationService extends ChangeNotifier {

  List<LeftNavigationItem> navItems = Utils.getDefaultNavItems();

  LeftNavigationService() {
    navItems.first.isSelected = true;
  }

  void selectNavItem(LeftNavigationItem item) {
    for (var element in navItems) {
      element.isSelected = item == element;
    }

    GoRouter.of(Utils.tabNav.currentContext!).go(item.route);
    notifyListeners();
  }
}