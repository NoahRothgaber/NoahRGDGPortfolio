import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class WelcomePageService extends ChangeNotifier {

  String name = '';
  String title1 = '';
  String title2 = '';
  String image = '';
  bool isDataRetrieved = false;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Timer greetingsTimer = Timer(Duration.zero, () {});

  late AnimationController wavingAnimation;

  void refreshData() async {
    isDataRetrieved = await retrieveWelcomePageData();
    notifyListeners();
  }

  void initializeAnimation(TickerProvider provider) {
    wavingAnimation = AnimationController(vsync: provider,
        duration: const Duration(milliseconds: 500)
    )..repeat(reverse: true);
  }

  void disposeAnimation() {
    wavingAnimation.dispose();
  }

  void initializeGreetings() {

    // cycle through the list of greetings every second
    greetingsTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (greetingsCounter == greetings.length) {
        greetingsCounter = 0;
      }

      currentGreeting = greetings[greetingsCounter];
      greetingsCounter++;

      // notify the change to the UI so it rebuilds
      notifyListeners();
    });
  }

  void disposeTimer() {
    greetingsTimer.cancel();
  }

  @override
  void dispose() {
    disposeTimer();
    super.dispose();
    disposeAnimation();
  }

  List<String> greetings = [];
  int greetingsCounter = 0;
  String currentGreeting = '';

  Future<bool> retrieveWelcomePageData() async {

    if (isDataRetrieved) {
      return true;
    }

    CollectionReference personalPortfolioCollection = firestore.collection('personal-portfolio');
    DocumentSnapshot pageDocument = await personalPortfolioCollection.doc('welcome-page').get();
    Map<String, dynamic> pageData = pageDocument.data() as Map<String, dynamic>;

    name = pageData['name'];
    title1 = pageData['title1'];
    title2 = pageData['title2'];
    image = pageData['image'];
    greetings = (pageData['greetings'] as List<dynamic>).map((e) => e.toString()).toList();
    currentGreeting = greetings[0];
    isDataRetrieved = true;
    return isDataRetrieved;

    // REST OF THE CODE WILL GO HERE

  }

}