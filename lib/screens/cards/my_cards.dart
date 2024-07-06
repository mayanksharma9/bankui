import 'package:flutter/material.dart';
import 'package:bankui/Data/bottomnavigationbar.dart';
import 'package:bankui/screens/cards/my_cards/My_Cards.dart';
import 'package:bankui/screens/cards/my_cards/manage.dart';
import 'package:bankui/screens/cards/my_cards/max.dart';

import 'my_cards/benefits.dart';

class my_cards extends StatefulWidget {
  const my_cards({Key? key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<my_cards> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),
            body: Stack(
              children: [
                Container(
                  child: NestedScrollView(
                    floatHeaderSlivers: true,
                    headerSliverBuilder: (context, innerBoxIsScrolled) => [
                      SliverOverlapAbsorber(
                        handle:
                            NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                        sliver: SliverSafeArea(
                          top: false,
                          sliver: SliverAppBar(
                            automaticallyImplyLeading: false,
                             expandedHeight: 90,
                             stretch: true,
                             backgroundColor: HSLColor.fromColor(Colors.grey)
                                .withLightness(0.15)
                                .toColor(),
                            // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                            pinned: false,
                            snap: true,

                            //foregroundColor:HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),
                            //shadowColor: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),
                            floating: true,
                            //forceElevated: innerBoxIsScrolled,
                            title: const Text(""),
                            centerTitle: true,
                            bottom: TabBar(
                              unselectedLabelColor: Colors.grey[600],
                              indicatorColor: HSLColor.fromColor(Colors.grey)
                                  .withLightness(0.18)
                                  .toColor(),
                              indicatorWeight: 1,
                              tabs: const [
                                Tab(
                                  //icon: Icon(Icons.home),
                                  text: 'my cards',
                                ),
                                Tab(
                                   //icon: Icon(Icons.list_alt),
                                  text: 'max',
                                ),
                                Tab(
                                 // icon: Icon(Icons.person),
                                  text: 'benefits',
                                ),
                                Tab(
                                  //icon: Icon(Icons.settings),
                                  text: 'manage',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                    body: const TabBarView(
                      children: [
                        My_Cards(),//my cards
                        max(),//max
                        benefits(),//benefits
                        manage(),//manage
                      ],
                    ),
                  ),
                ),
                mainbottomnavigationbar(check: 1,)
              ],
            )),

      ),
    );
  }
}

