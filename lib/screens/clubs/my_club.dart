
import 'package:bankui/screens/clubs/rewards.dart';
import 'package:bankui/screens/clubs/store.dart';
import 'package:bankui/screens/clubs/travel.dart';
import 'package:flutter/material.dart';
import 'package:bankui/Data/bottomnavigationbar.dart';


class My_Club extends StatefulWidget {
  const My_Club({Key? key}) : super(key: key);

  @override
  _My_Credit_ScoreState createState() => _My_Credit_ScoreState();
}

class _My_Credit_ScoreState extends State<My_Club> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
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
                              tabs: [
                                const Tab(
                                  //icon: Icon(Icons.home),
                                  text: 'rewards',
                                ),
                                const Tab(
                                  //icon: Icon(Icons.list_alt),
                                  text: 'store',
                                ),
                                const Tab(

                                  //icon: Icon(Icons.list_alt),
                                  text: 'travel',
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                    body: const TabBarView(
                      children: [
                        Rewards(),//my cards
                        Store(),//max
                        Travel(),//max

                        //manage
                      ],
                    ),
                  ),
                ),
                mainbottomnavigationbar(check: 3,)
              ],
            )),
      ),
    );
  }
}