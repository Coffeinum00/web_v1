import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web1/logic/page_provider.dart';

import 'package:web1/screens/contact.dart';
import 'package:web1/screens/expansionlist.dart';
import 'package:web1/screens/four.dart';
import 'package:web1/screens/four_mob.dart';
import 'package:web1/screens/home/menu.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color col = Colors.transparent;
  // bool? _isSelected = false;
  String screenType = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.green,
        child: Center(
          child: ResponsiveWrapper.builder(
              PageView(
                  pageSnapping: false,
                  scrollDirection: Axis.vertical,
                  controller:
                      Provider.of<Controller>(context, listen: false).control!,
                  children: ResponsiveBreakpoint == MOBILE
                      ? [
                          FourMob(),
                          Expansions(),
                          Contact(),
                        ]
                      : [
                          Four(),
                          Expansions(),
                          Contact(),
                        ]),
              minWidth: 480,
              defaultScale: true,
              breakpoints: const [
                ResponsiveBreakpoint.resize(480, name: MOBILE),
                ResponsiveBreakpoint.autoScale(800, name: TABLET),
                ResponsiveBreakpoint.resize(1000, name: DESKTOP),
              ],
              background: Container(color: const Color(0xFFF5F5F5))),
        ),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: const Drawer(
        backgroundColor: Colors.white,
        child: Menu(),
      ),
    );
  }
}
