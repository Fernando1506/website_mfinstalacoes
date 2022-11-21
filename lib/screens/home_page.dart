import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_responsive/function/function_webwhatsapp.dart';
import 'package:flutter_responsive/responsive/desktop_body.dart';
import 'package:flutter_responsive/responsive/mobile_body.dart';

import '../responsive/responsive_layout.dart';
import '../responsive/tablet_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
        tabletBody: MyTabletBody(),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(15),
        child: FloatingActionButton(
          onPressed: () {
            openwhatsapp();
          },
          child: Image.asset('assets/images/whatsapp_web.png'),
          backgroundColor: Colors.green,
        ),
      ).animate(),
    );
  }
}
