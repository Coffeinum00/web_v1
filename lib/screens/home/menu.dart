import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web1/logic/page_provider.dart';

// menu drawer!

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              color: Provider.of<Controller>(context, listen: true)
                          .control!
                          .page ==
                      0
                  ? Colors.amberAccent
                  : Colors.transparent),
          child: ListTile(
            title: const Text('Home'),
            onTap: () {
              Provider.of<Controller>(context, listen: false)
                  .control!
                  .animateToPage(0,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.linearToEaseOut);
            },
          ),
        ),
        ListTile(
          title: const Text('About'),
          onTap: () {
            Provider.of<Controller>(context, listen: false)
                .control!
                .animateToPage(1,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.linearToEaseOut);
          },
        ),
        Container(
          decoration: BoxDecoration(
              color: Provider.of<PageProvider>(context, listen: true)
                          .currentPage ==
                      2
                  ? Colors.amberAccent
                  : Colors.transparent),
          child: ListTile(
            title: const Text('Contact'),
            onTap: () {
              Provider.of<Controller>(context, listen: false)
                  .control!
                  .animateToPage(2,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.linearToEaseOut);
            },
          ),
        ),
      ],
    );
  }
}
