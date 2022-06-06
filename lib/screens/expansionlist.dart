import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web1/logic/page_provider.dart';

class Expansions extends StatelessWidget {
  const Expansions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size esize = MediaQuery.of(context).size;
    return Container(
      height: esize.height,
      width: esize.width,
      color: Color(0xff003d78),
      // decoration: const BoxDecoration(
      //   gradient: LinearGradient(
      //       colors: [Colors.yellow, Colors.green],
      //       begin: Alignment.topCenter,
      //       end: Alignment.bottomCenter),
      // ),

      // child: Column(
      //   children: [
      //     ExpansionTile(
      //       title: Text('simea'),
      //       initiallyExpanded: true,
      //     ),
      //     ExpansionTile(title: Text('simea')),
      //   ],
      // ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(60, 160, 60, 20),
        child: Container(
          color: Colors.transparent,
          child: ExpansionPanelList.radio(
            expandedHeaderPadding: EdgeInsets.symmetric(horizontal: 140),
            children: [
              ExpansionPanelRadio(
                backgroundColor: Color(0xff909eb2),
                canTapOnHeader: true,
                value: 0,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(
                    tileColor: Colors.transparent,
                    title: Text('Ziomus'),
                  );
                },
                body: const ListTile(
                  tileColor: Colors.transparent,
                  subtitle: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi suscipit vitae nunc id malesuada. Donec consequat mi ac tellus porta lacinia. Vestibulum feugiat, mauris feugiat mollis condimentum, risus neque tempus quam, ut aliquet ex velit non lorem. Pellentesque sagittis aliquam leo at aliquet. Nullam ultrices faucibus massa, nec posuere velit lacinia quis. Aenean convallis, libero at elementum ultrices, nisi libero venenatis sapien, at auctor purus ex sed orci. Suspendisse mattis sem sit amet lacus luctus, vitae porttitor erat rutrum. Proin aliquet congue ultrices. In ac erat consectetur, consequat ligula ut, blandit ligula. Maecenas lectus lacus, imperdiet sit amet felis eu, tempus elementum nibh. Donec venenatis sed risus sed blandit. Mauris luctus egestas ante vel ultrices.'),
                ),
              ),
              ExpansionPanelRadio(
                backgroundColor: Color(0xff909eb2),
                canTapOnHeader: true,
                value: 1,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(
                    title: Text('Click me'),
                  );
                },
                body: const ListTile(
                  subtitle: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi suscipit vitae nunc id malesuada. Donec consequat mi ac tellus porta lacinia. Vestibulum feugiat, mauris feugiat mollis condimentum, risus neque tempus quam, ut aliquet ex velit non lorem. Pellentesque sagittis aliquam leo at aliquet. Nullam ultrices faucibus massa, nec posuere velit lacinia quis. Aenean convallis, libero at elementum ultrices, nisi libero venenatis sapien, at auctor purus ex sed orci. Suspendisse mattis sem sit amet lacus luctus, vitae porttitor erat rutrum. Proin aliquet congue ultrices. In ac erat consectetur, consequat ligula ut, blandit ligula. Maecenas lectus lacus, imperdiet sit amet felis eu, tempus elementum nibh. Donec venenatis sed risus sed blandit. Mauris luctus egestas ante vel ultrices.'),
                ),
              ),
              ExpansionPanelRadio(
                backgroundColor: Color(0xff909eb2),
                canTapOnHeader: true,
                value: 2,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(
                    title: Text('kokos'),
                  );
                },
                body: const ListTile(
                  subtitle: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi suscipit vitae nunc id malesuada. Donec consequat mi ac tellus porta lacinia. Vestibulum feugiat, mauris feugiat mollis condimentum, risus neque tempus quam, ut aliquet ex velit non lorem. Pellentesque sagittis aliquam leo at aliquet. Nullam ultrices faucibus massa, nec posuere velit lacinia quis. Aenean convallis, libero at elementum ultrices, nisi libero venenatis sapien, at auctor purus ex sed orci. Suspendisse mattis sem sit amet lacus luctus, vitae porttitor erat rutrum. Proin aliquet congue ultrices. In ac erat consectetur, consequat ligula ut, blandit ligula. Maecenas lectus lacus, imperdiet sit amet felis eu, tempus elementum nibh. Donec venenatis sed risus sed blandit. Mauris luctus egestas ante vel ultrices.'),
                ),
              ),
              ExpansionPanelRadio(
                backgroundColor: Color(0xff909eb2),
                canTapOnHeader: true,
                value: 3,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(
                    title: Text('ananas'),
                  );
                },
                body: const ListTile(
                  subtitle: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi suscipit vitae nunc id malesuada. Donec consequat mi ac tellus porta lacinia. Vestibulum feugiat, mauris feugiat mollis condimentum, risus neque tempus quam, ut aliquet ex velit non lorem. Pellentesque sagittis aliquam leo at aliquet. Nullam ultrices faucibus massa, nec posuere velit lacinia quis. Aenean convallis, libero at elementum ultrices, nisi libero venenatis sapien, at auctor purus ex sed orci. Suspendisse mattis sem sit amet lacus luctus, vitae porttitor erat rutrum. Proin aliquet congue ultrices. In ac erat consectetur, consequat ligula ut, blandit ligula. Maecenas lectus lacus, imperdiet sit amet felis eu, tempus elementum nibh. Donec venenatis sed risus sed blandit. Mauris luctus egestas ante vel ultrices.'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
