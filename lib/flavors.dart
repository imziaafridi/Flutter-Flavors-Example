import 'package:flutter/material.dart';

enum Flavor {
  dev,
  prod,
//  stage
}

class F {
  static Flavor? appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'productions';
      // case Flavor.stage:
      //   return 'stage';
      case Flavor.dev:
      default:
        return 'development';
    }
  }

  static bool get isDev => appFlavor == Flavor.dev;
  static bool get isProd => appFlavor == Flavor.prod;
  // static bool get isStage => appFlavor == Flavor.stage;

  static Color get getColor {
    switch (appFlavor) {
      case Flavor.prod:
        return Colors.purple;
      // case Flavor.stage:
      //   return Colors.red;
      case Flavor.dev:
      default:
        return Colors.yellow;
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.prod:
        return 'https://api.flutter.flavor-prod.com/';
      // case Flavor.stage:
      //   return 'https://api.flutter.flavor-stage.com/';
      case Flavor.dev:
      default:
        return 'https://api.flutter.flavor-dev.com/';
    }
  }
}
