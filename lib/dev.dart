import 'package:flutter/material.dart';
import 'package:flutter_flavors/flavors.dart';
import 'package:flutter_flavors/main.dart';

void main() {
  F.appFlavor = Flavor.dev;
  runApp(const MyApp());
}
