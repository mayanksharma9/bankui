
import 'package:flutter/material.dart';
import 'package:bankui/Data/bottomnavigationbar.dart';
import 'package:bankui/screens/money/account.dart';
import 'package:bankui/screens/money/creditscore.dart';



class My_Money extends StatefulWidget {
  const My_Money({Key? key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<My_Money> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
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
                            title: Text(""),
                            centerTitle: true,
                            bottom: TabBar(
                              unselectedLabelColor: Colors.grey[600],
                              indicatorColor: HSLColor.fromColor(Colors.grey)
                                  .withLightness(0.18)
                                  .toColor(),
                              indicatorWeight: 1,
                              tabs: [
                                Tab(
                                  //icon: Icon(Icons.home),
                                  text: 'accounts',
                                ),
                                Tab(
                                  //icon: Icon(Icons.list_alt),
                                  text: 'credit score',
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                    body: TabBarView(
                      children: [
                        Money_Account(),//my cards
                        Money_Credit_Score(),//max
                       //manage
                      ],
                    ),
                  ),
                ),
                mainbottomnavigationbar(check: 2,)
              ],
            )),
      ),
    );
  }
}