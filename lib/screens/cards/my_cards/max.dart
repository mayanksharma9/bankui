
import 'dart:ui';

import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';

class max extends StatefulWidget {
  const max({Key? key}) : super(key: key);

  @override
  _maxState createState() => _maxState();
}

class _maxState extends State<max> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  SafeArea(
        top:  true,
        bottom: true,
        child: Builder(
          builder: (context) => CustomScrollView(
            slivers: [
              SliverOverlapInjector(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
              SliverPadding(
                padding: const EdgeInsets.all(12),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (context, index) {
                      //Colors.pink;
                      final childCount = 1;
                      final hasSeparator = index != childCount - 1;
                      final double bottom = hasSeparator ? 12 : 0;
                      final child = Text("Index is : $index");
                      return Container(
                        margin: EdgeInsets.only(bottom: bottom),
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.account_balance_wallet,color: HSLColor.fromColor(Colors.brown).withLightness(0.6).toColor(),),
                                        Text("CRED MAX",
                                          style: TextStyle(
                                              wordSpacing: .5,
                                              letterSpacing: .5,

                                              color:HSLColor.fromColor(Colors.brown).withLightness(0.6).toColor(),
                                              fontSize:  20,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("do more with your credit card",
                                        style: TextStyle(
                                            wordSpacing: .5,
                                            letterSpacing: .5,
                                            color:Colors.grey[600],
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                height: 10,
                                thickness: 1.8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Container(
                                  child: ClayContainer(
                                    emboss: true,
                                    color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),
                                    height: 195,
                                    width: 330,
                                    spread: 7,
                                    depth:10,
                                    borderRadius: 25,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),),
                                        borderRadius: BorderRadius.circular(21),
                                      ),
                                      //color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
                                      color:HSLColor.fromColor(Colors.brown).withLightness(0.6).toColor(),
                                      child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 25,top: 15),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    child:const Text("rentpay",style: TextStyle( wordSpacing: .5,
                                                        letterSpacing: .5,

                                                        color: Colors.white70,
                                                        fontSize:  24,
                                                        fontWeight: FontWeight.bold),),
                                                  ),
                                                  const SizedBox(
                                                    width: 40,
                                                  ),
                                                  Stack(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 15,top: 5),
                                                        child: Container(
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Icon(Icons.star_rounded,color: Colors.yellow[300],),
                                                              const Text("11 OFFERS INSIDE",style: TextStyle( wordSpacing: .5,
                                                                  letterSpacing: .5,

                                                                  color: Colors.white60,
                                                                  fontSize:11,
                                                                  fontWeight: FontWeight.bold),),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 10),
                                                child: Container(
                                                  child:const Text("pay via credit card. earn upto 45",style: TextStyle(
                                                      wordSpacing: .5,
                                                      letterSpacing: .5,
                                                      color: Colors.white70,
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.bold
                                                  ),),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 3),
                                                child: Container(
                                                  child:const Text("days of credit period and reward",style: TextStyle(
                                                      wordSpacing: .5,
                                                      letterSpacing: .5,

                                                      color: Colors.white70,
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.bold
                                                  ),),),),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 3),
                                                child: Container(
                                                  child:const Text("points",style: TextStyle(
                                                      wordSpacing: .5,
                                                      letterSpacing: .5,
                                                      color: Colors.white70,
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.bold
                                                  ),),),),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 20),
                                                child: Container(
                                                  width: 35,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(
                                                        color: Colors.white,
                                                      ),
                                                      borderRadius: const BorderRadius.all(Radius.circular(20))
                                                  ),
                                                  child: Container(
                                                    child: const Icon(Icons.arrow_right_alt,color: Colors.black,),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  child:ClayContainer(
                                    emboss: true,
                                    color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),
                                    height: 195,
                                    width: 330,

                                    spread: 7,
                                    depth:10,
                                    borderRadius: 25,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),),
                                        borderRadius: BorderRadius.circular(21),
                                      ),
                                       color: Colors.blue.withOpacity(0.9),
                                      child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 0,top: 25),
                                          child: Stack(
                                            children: [
                                             Padding(
                                               padding: const EdgeInsets.only(right:50,left: 1),
                                               child: Container(
                                                 color: Colors.white,
                                                 width: 130,
                                                 height: 20,
                                                 child: Padding(
                                                   padding: const EdgeInsets.only(top: 5,left: 5),
                                                   child: Text("JUST LAUNCHED",style: TextStyle( wordSpacing: .5,
                                                       letterSpacing: 1.5,
                                                       color: Colors.blue[900],
                                                       fontSize:  11,
                                                       fontWeight: FontWeight.bold),),
                                                 ) ,
                                               ),
                                             ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 40,left: 20),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child:const Text("now pay education\nfees",style: TextStyle( wordSpacing: .5,
                                                          letterSpacing: .5,
                                                          color: Colors.white,
                                                          fontSize:  24,
                                                          fontWeight: FontWeight.bold),),
                                                    ),
                                                    const SizedBox(
                                                      width: 40,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 110,left: 20),
                                                child: Container(
                                                  width: 35,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(
                                                        color: Colors.white,
                                                      ),
                                                      borderRadius: const BorderRadius.all(Radius.circular(20))
                                                  ),
                                                  child: Container(
                                                    child: const Icon(Icons.arrow_right_alt,color: Colors.black,),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 4000,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    childCount: 1,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
