// Imports
import 'package:flutter/material.dart';
import 'package:noah_r_gdgflutter/pages/splash_page.dart';
import 'package:noah_r_gdgflutter/routes/app_routes.dart';
import 'package:noah_r_gdgflutter/services/left_navigation_service.dart';
import 'package:noah_r_gdgflutter/services/welcome_page_service.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => LeftNavigationService(),
            ),
            ChangeNotifierProvider(
              create: (_) => WelcomePageService(),
            ),
          ],
          child: const PortfolioApp()
      )
  );
}

class PortfolioApp extends StatelessWidget
{
  const PortfolioApp({super.key});

  // This is the root page
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp.router(
      title: 'Portfolio App',
      theme: ThemeData(
          fontFamily: 'Product Sans',
      ),
      debugShowCheckedModeBanner: false,
      routeInformationProvider: AppRoutes.router.routeInformationProvider,
      routeInformationParser: AppRoutes.router.routeInformationParser,
      routerDelegate: AppRoutes.router.routerDelegate,
    );
  }
}