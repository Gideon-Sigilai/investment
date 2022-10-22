import 'package:bitvest_forex_investment/screen/Homepage/desktop_scaffold.dart';
import 'package:bitvest_forex_investment/screen/Homepage/mobile_scaffold.dart';
import 'package:bitvest_forex_investment/screen/Homepage/tablet_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:bitvest_forex_investment/screen/Homepage/responsize_layout.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return responsive_layout(desktopScaffold: Desktop_scaffold(), mobileScaffold: Mobile_scaffold(), tabletScaffold: Tablet_scaffold());
  }
}

