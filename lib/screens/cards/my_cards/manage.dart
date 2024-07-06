import 'package:flutter/material.dart';

class manage extends StatefulWidget {
  const manage({Key? key}) : super(key: key);

  @override
  _maxState createState() => _maxState();
}

class _maxState extends State<manage> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        top: false,
        bottom: false,
        child: Builder(
          builder: (context) =>
              CustomScrollView(
                slivers: [
                  SliverOverlapInjector(
                      handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
                  SliverPadding(
                    padding: EdgeInsets.all(12),
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
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 7),
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          child: Icon(
                                            Icons.headset_mic_outlined,
                                            color: HSLColor.fromColor(Colors.red)
                                                .withLightness(0.8)
                                                .toColor(),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0,right: 20,top: 30),
                                        child: Column(

                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(right: 53),
                                                child: Text(
                                                  "   CRED Protects insights",
                                                  style: TextStyle(
                                                      wordSpacing: .5,
                                                      letterSpacing: .5,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.grey[400],
                                                      fontSize: 14),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 10,left: 14,right: 5),
                                                child: Text(
                                                  "   view your credit card usage report",
                                                  style: TextStyle(
                                                      wordSpacing: .5,
                                                      letterSpacing: .5,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.lightGreen[800],
                                                      fontSize: 13),
                                                ),
                                              ),

                                            ]),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5,right: 4),
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          child: Icon(Icons.chevron_right,
                                              color: Colors.grey[600]),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Row(

                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 13),
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Icon(
                                              Icons.privacy_tip_outlined,
                                              color: HSLColor.fromColor(Colors.red)
                                                  .withLightness(0.8)
                                                  .toColor(),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:12,left: 14,right: 93),
                                          child: Text(
                                            "   manage CRED Protect",
                                            style: TextStyle(
                                                wordSpacing: .5,
                                                letterSpacing: .5,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[400],
                                                fontSize: 14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8),
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Icon(Icons.chevron_right,
                                                color: Colors.grey[600]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),


                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 13),
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          child: Icon(
                                            Icons.calendar_today_rounded,
                                            color: HSLColor.fromColor(Colors.red)
                                                .withLightness(0.8)
                                                .toColor(),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0,right: 17,top: 30),
                                        child: Column(

                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(right: 140),
                                                child: Text(
                                                  "auto-pay",
                                                  style: TextStyle(
                                                      wordSpacing: .5,
                                                      letterSpacing: .5,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.grey[400],
                                                      fontSize: 14),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 10,left: 2),
                                                child: Text(
                                                  "      automatic credit card bill payments",
                                                  style: TextStyle(
                                                      wordSpacing: .5,
                                                      letterSpacing: .5,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.grey[600],
                                                      fontSize: 13),
                                                ),
                                              ),

                                            ]),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5,right: 13),
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          child: Icon(Icons.chevron_right,
                                              color: Colors.grey[600]),
                                        ),
                                      ),
                                    ],
                                  ),







                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Row(

                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 12),
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Icon(
                                              Icons.history_edu,
                                              color: HSLColor.fromColor(Colors.red)
                                                  .withLightness(0.8)
                                                  .toColor(),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:12,left: 14,right: 131),
                                          child: Text(
                                            "   payment history",
                                            style: TextStyle(
                                                wordSpacing: .5,
                                                letterSpacing: .5,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[400],
                                                fontSize: 14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 6),
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Icon(Icons.chevron_right,
                                                color: Colors.grey[600]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Row(

                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 12),
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Icon(
                                              Icons.sticky_note_2_outlined,
                                              color: HSLColor.fromColor(Colors.red)
                                                  .withLightness(0.8)
                                                  .toColor(),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:12,left: 14,right: 95),
                                          child: Text(
                                            "   historical statements",
                                            style: TextStyle(
                                                wordSpacing: .5,
                                                letterSpacing: .5,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[400],
                                                fontSize: 14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8),
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Icon(Icons.chevron_right,
                                                color: Colors.grey[600]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Row(

                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 12),
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Icon(
                                              Icons.credit_card_rounded,
                                              color: HSLColor.fromColor(Colors.red)
                                                  .withLightness(0.8)
                                                  .toColor(),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:12,left: 14,right: 155),
                                          child: Text(
                                            "   linked cards",
                                            style: TextStyle(
                                                wordSpacing: .5,
                                                letterSpacing: .5,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[400],
                                                fontSize: 14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8),
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Icon(Icons.chevron_right,
                                                color: Colors.grey[600]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Row(

                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 12),
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Icon(
                                              Icons.photo_camera_back,
                                              color: HSLColor.fromColor(Colors.red)
                                                  .withLightness(0.8)
                                                  .toColor(),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:12,left: 14,right: 152),
                                          child: Text(
                                            "   archive card",
                                            style: TextStyle(
                                                wordSpacing: .5,
                                                letterSpacing: .5,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[400],
                                                fontSize: 14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8),
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Icon(Icons.chevron_right,
                                                color: Colors.grey[600]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Row(

                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 12),
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Icon(
                                              Icons.headset_mic_outlined,
                                              color: HSLColor.fromColor(Colors.red)
                                                  .withLightness(0.8)
                                                  .toColor(),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:12,left: 14,right: 171),
                                          child: Text(
                                            "   talk to us",
                                            style: TextStyle(
                                                wordSpacing: .5,
                                                letterSpacing: .5,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[400],
                                                fontSize: 14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8),
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Icon(Icons.chevron_right,
                                                color: Colors.grey[600]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Row(

                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 12),
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Icon(
                                              Icons.person_pin_outlined,
                                              color: HSLColor.fromColor(Colors.red)
                                                  .withLightness(0.8)
                                                  .toColor(),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:12,left: 14,right: 71),
                                          child: Text(
                                            "   call bank customer care",
                                            style: TextStyle(
                                                wordSpacing: .5,
                                                letterSpacing: .5,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[400],
                                                fontSize: 14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 18),
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Icon(Icons.chevron_right,
                                                color: Colors.grey[600]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
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
