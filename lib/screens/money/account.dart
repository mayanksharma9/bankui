import 'package:bankui/Utils/elevated.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Money_Account extends StatefulWidget {
  const Money_Account({Key? key}) : super(key: key);

  @override
  _Money_AccountState createState() => _Money_AccountState();
}

class _Money_AccountState extends State<Money_Account> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String name = "SHYAM SUNDAR";
    String not_paid = "1,81,875";
    String charges_detected = "934.43";
    String HDFC="HDFC0000076";
    String HDFC_type="savings";
    String HDFC_branch_name="bangalore - m g road";

    String Axis="UTIB0000114";
    String Axis_type="savings";
    String Axis_branch_name="indiranagar (bangalore)";


    return SafeArea(
        top: true,
        bottom: true,
        child: Builder(
          builder: (context) => CustomScrollView(
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
                      //final child = Text("Index is : $index");
                      return Container(
                        margin: EdgeInsets.only(bottom: bottom),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 13,
                                  ),
                                  Text(
                                    "all your accounts",
                                    style: TextStyle(
                                        wordSpacing: .5,
                                        letterSpacing: .5,
                                        color: Colors.grey[500],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  ClayContainer(
                                    color: HSLColor.fromColor(Colors.grey)
                                        .withLightness(0.18)
                                        .toColor(),
                                    height: 47,
                                    width: 125,
                                    spread: 7,
                                    depth: 15,
                                    borderRadius: 20,
                                    curveType: CurveType.convex,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25, top: 15),
                                      child: Text(
                                        "Add account",
                                        style: TextStyle(
                                            wordSpacing: .5,
                                            letterSpacing: .5,
                                            color: Colors.grey[500],
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                child: ClayContainer(
                                  emboss: true,
                                  color: HSLColor.fromColor(Colors.grey)
                                      .withLightness(0.17)
                                      .toColor(),
                                  height: 330,
                                  width: 330,
                                  spread: 7,
                                  depth: 10,
                                  borderRadius: 25,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: HSLColor.fromColor(Colors.grey)
                                            .withLightness(0.15)
                                            .toColor(),
                                      ),
                                      borderRadius: BorderRadius.circular(21),
                                    ),

                                    //color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
                                    color: HSLColor.fromColor(Colors.white)
                                        .withLightness(0.9)
                                        .toColor(),

                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 1, top: 5),
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, top: 0),
                                              child: Column(
                                                //crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: <Widget>[
                                                  Row(
                                                    children: [
                                                      Container(
                                                        height: 42,
                                                        width: 42,
                                                        margin: EdgeInsets.only(
                                                            left: 5, top: 0),
                                                        padding:
                                                            EdgeInsets.all(5),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                            border: Border.all(
                                                                width: 0.5,
                                                                color: Colors
                                                                    .black54)),
                                                        child: Icon(
                                                          Icons
                                                              .add_box_outlined,
                                                          color: Colors.black87,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 25,
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(right: 54),
                                                            child: Text(
                                                              "HDFC Bank LTD",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black87,
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right: 108,
                                                                    top: 5),
                                                            child: Text(
                                                              "xxxx 7093",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey[500],
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets.only(right: 0),
                                                            child: RichText(
                                                              text: TextSpan(
                                                                text: 'last refreshed ',
                                                                style: TextStyle(
                                                                    wordSpacing: .5,
                                                                    letterSpacing: .5,
                                                                    color: Colors.grey[500],
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500),
                                                                /*defining default style is optional */
                                                                children: <TextSpan>[
                                                                  TextSpan(text: '13 days ago',
                                                                    style: TextStyle(
                                                                        wordSpacing: .5,
                                                                        letterSpacing: .5,
                                                                        color: Colors.red[300],
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.w500),


                                                                  ),

                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 0,
                                                                top: 0),
                                                        child: Column(
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .info_outline,
                                                              color: Colors
                                                                  .brown[300],
                                                              size: 30,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Container(
                                                    width:150,
                                                    height:35,
                                                    child: ElevatedNeoPop(
                    color: Colors.orange,
                    onTapUp: () => HapticFeedback.vibrate(),
                    onTapDown: () => HapticFeedback.vibrate(),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    label: "Check balance ",
                    textStyle: const TextStyle(color: Colors.black, fontSize: 13),
                    onPressed: (){},
                  ),
                                                  ),
                                                  /*Row(

                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 247),
                                                        child: Container(

                                                          decoration: BoxDecoration(
                                                            color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),
                                                            borderRadius: BorderRadius.only(
                                                                topRight: Radius.circular(20.0),
                                                                bottomRight: Radius.circular(20.0),
                                                                topLeft: Radius.circular(20.0),
                                                                bottomLeft: Radius.circular(20.0)),
                                                          ),
                                                          width: 20,
                                                          height: 20,
                                                        ),
                                                      ),
                                                      Container(

                                                        decoration: BoxDecoration(
                                                          color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),
                                                          borderRadius: BorderRadius.only(
                                                              topRight: Radius.circular(20.0),
                                                              bottomRight: Radius.circular(20.0),
                                                              topLeft: Radius.circular(20.0),
                                                              bottomLeft: Radius.circular(20.0)),
                                                        ),
                                                        width: 20,
                                                        height: 20,
                                                      ),
                                                    ],
                                                  ),*/
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text(
                                                          "IFSC",
                                                          style: TextStyle(
                                                              wordSpacing: .5,
                                                              letterSpacing: .5,
                                                              color: Colors
                                                                  .grey[500],
                                                              fontSize: 13,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 120),
                                                        child: Text(
                                                          "type",
                                                          style: TextStyle(
                                                              wordSpacing: .5,
                                                              letterSpacing: .5,
                                                              color: Colors
                                                                  .grey[500],
                                                              fontSize: 13,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500),
                                                        ),
                                                      ),

                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                                        child: Text(
                                                          "$HDFC",
                                                          style: TextStyle(
                                                              wordSpacing: .5,
                                                              letterSpacing: .5,
                                                              color: Colors
                                                                  .grey[800],
                                                              fontSize: 14,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w700),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 55),
                                                        child: Text(
                                                          "$HDFC_type",
                                                          style: TextStyle(
                                                              wordSpacing: .5,
                                                              letterSpacing: .5,
                                                              color: Colors
                                                                  .grey[800],
                                                              fontSize: 14,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w700),
                                                        ),
                                                      ),

                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5,top: 30),
                                                        child: Text(
                                                          "brance name",
                                                          style: TextStyle(
                                                              wordSpacing: .5,
                                                              letterSpacing: .5,
                                                              color: Colors
                                                                  .grey[500],
                                                              fontSize: 13,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500),
                                                        ),
                                                      ),



                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                                        child: Text(
                                                          "$HDFC_branch_name",
                                                          style: TextStyle(
                                                              wordSpacing: .5,
                                                              letterSpacing: .5,
                                                              color: Colors
                                                                  .grey[800],
                                                              fontSize: 14,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w700),
                                                        ),
                                                      ),


                                                    ],
                                                  ),
                                                ],
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
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                child: ClayContainer(
                                  emboss: true,
                                  color: HSLColor.fromColor(Colors.grey)
                                      .withLightness(0.17)
                                      .toColor(),
                                  height: 330,
                                  width: 330,
                                  spread: 7,
                                  depth: 10,
                                  borderRadius: 25,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: HSLColor.fromColor(Colors.grey)
                                            .withLightness(0.15)
                                            .toColor(),
                                      ),
                                      borderRadius: BorderRadius.circular(21),
                                    ),

                                    //color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
                                    color: HSLColor.fromColor(Colors.white)
                                        .withLightness(0.9)
                                        .toColor(),

                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 1, top: 5),
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, top: 0),
                                              child: Column(
                                                //crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: <Widget>[
                                                  Row(
                                                    children: [
                                                      Container(
                                                        height: 42,
                                                        width: 42,
                                                        margin: EdgeInsets.only(
                                                            left: 5, top: 0),
                                                        padding:
                                                        EdgeInsets.all(5),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                5),
                                                            border: Border.all(
                                                                width: 0.5,
                                                                color: Colors
                                                                    .black54)),
                                                        child: Icon(
                                                          Icons
                                                              .add_box_outlined,
                                                          color: Colors.black87,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 25,
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(right: 59),
                                                            child: Text(
                                                              "Axis Bank LTD",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black87,
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .only(
                                                                right: 108,
                                                                top: 5),
                                                            child: Text(
                                                              "xx255660",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey[500],
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsets.only(right: 0),
                                                            child: RichText(
                                                              text: TextSpan(
                                                                text: 'last refreshed ',
                                                                style: TextStyle(
                                                                    wordSpacing: .5,
                                                                    letterSpacing: .5,
                                                                    color: Colors.grey[500],
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500),
                                                                /*defining default style is optional */
                                                                children: <TextSpan>[
                                                                  TextSpan(text: '16 days ago',
                                                                    style: TextStyle(
                                                                        wordSpacing: .5,
                                                                        letterSpacing: .5,
                                                                        color: Colors.red[300],
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.w500),


                                                                  ),

                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets
                                                            .only(
                                                            left: 0,
                                                            top: 0),
                                                        child: Column(
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .info_outline,
                                                              color: Colors
                                                                  .brown[300],
                                                              size: 30,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Container(
                                                    width:150,
                                                    height:35,
                                                    child: ElevatedNeoPop(
                    color: Colors.orange,
                    onTapUp: () => HapticFeedback.vibrate(),
                    onTapDown: () => HapticFeedback.vibrate(),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    label: "check balance",
                    textStyle: const TextStyle(color: Colors.black, fontSize: 13),
                    onPressed: (){},
                  ),
                                                  ),
                                                  /*Row(

                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 247),
                                                        child: Container(

                                                          decoration: BoxDecoration(
                                                            color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),
                                                            borderRadius: BorderRadius.only(
                                                                topRight: Radius.circular(20.0),
                                                                bottomRight: Radius.circular(20.0),
                                                                topLeft: Radius.circular(20.0),
                                                                bottomLeft: Radius.circular(20.0)),
                                                          ),
                                                          width: 20,
                                                          height: 20,
                                                        ),
                                                      ),
                                                      Container(

                                                        decoration: BoxDecoration(
                                                          color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),
                                                          borderRadius: BorderRadius.only(
                                                              topRight: Radius.circular(20.0),
                                                              bottomRight: Radius.circular(20.0),
                                                              topLeft: Radius.circular(20.0),
                                                              bottomLeft: Radius.circular(20.0)),
                                                        ),
                                                        width: 20,
                                                        height: 20,
                                                      ),
                                                    ],
                                                  ),*/
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text(
                                                          "IFSC",
                                                          style: TextStyle(
                                                              wordSpacing: .5,
                                                              letterSpacing: .5,
                                                              color: Colors
                                                                  .grey[500],
                                                              fontSize: 13,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 120),
                                                        child: Text(
                                                          "type",
                                                          style: TextStyle(
                                                              wordSpacing: .5,
                                                              letterSpacing: .5,
                                                              color: Colors
                                                                  .grey[500],
                                                              fontSize: 13,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500),
                                                        ),
                                                      ),

                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                                        child: Text(
                                                          "$Axis",
                                                          style: TextStyle(
                                                              wordSpacing: .5,
                                                              letterSpacing: .5,
                                                              color: Colors
                                                                  .grey[800],
                                                              fontSize: 14,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w700),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 55),
                                                        child: Text(
                                                          "$Axis_type",
                                                          style: TextStyle(
                                                              wordSpacing: .5,
                                                              letterSpacing: .5,
                                                              color: Colors
                                                                  .grey[800],
                                                              fontSize: 14,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w700),
                                                        ),
                                                      ),

                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5,top: 30),
                                                        child: Text(
                                                          "brance name",
                                                          style: TextStyle(
                                                              wordSpacing: .5,
                                                              letterSpacing: .5,
                                                              color: Colors
                                                                  .grey[500],
                                                              fontSize: 13,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500),
                                                        ),
                                                      ),



                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                                        child: Text(
                                                          "$Axis_branch_name",
                                                          style: TextStyle(
                                                              wordSpacing: .5,
                                                              letterSpacing: .5,
                                                              color: Colors
                                                                  .grey[800],
                                                              fontSize: 14,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w700),
                                                        ),
                                                      ),


                                                    ],
                                                  ),






                                                ],
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
                            SizedBox(height: 20,),
                            Divider(
                              height: 20,
                              thickness: 3,
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(right: 220),
                              child: Container(
                                child: Text(
                                  "powered by ",
                                  style: TextStyle(
                                      wordSpacing: .5,
                                      letterSpacing: .5,
                                      color: Colors
                                          .grey[500],
                                      fontSize: 13,
                                      fontWeight:
                                      FontWeight
                                          .w600),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(right: 74),
                              child: Container(child:Text(
                                "Know more about your track ",
                                style: TextStyle(
                                    wordSpacing: .5,
                                    letterSpacing: .5,
                                    color: Colors
                                        .grey[300],
                                    fontSize: 16,
                                    fontWeight:
                                    FontWeight
                                        .w500),
                              ), ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Container(child: Text(
                                "browse through our frequently asked questions ",
                                style: TextStyle(
                                    wordSpacing: .5,
                                    letterSpacing: .5,
                                    color: Colors
                                        .grey[500],
                                    fontSize: 12,
                                    fontWeight:
                                    FontWeight
                                        .w600),
                              ), ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5,right:96),
                              child: Container(child: Text(
                                "to learn more of how track works",
                                style: TextStyle(
                                    wordSpacing: .5,
                                    letterSpacing: .5,
                                    color: Colors
                                        .grey[500],
                                    fontSize: 12,
                                    fontWeight:
                                    FontWeight
                                        .w600),
                              ), ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 30,right: 160),
                              child: ClayContainer(
                                color: HSLColor.fromColor(Colors.grey)
                                    .withLightness(0.18)
                                    .toColor(),
                                height: 47,
                                width: 125,
                                spread: 8,
                                depth: 16,
                                borderRadius: 20,
                                curveType: CurveType.convex,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25, top: 15),
                                  child: Text(
                                    "View FAQs",
                                    style: TextStyle(
                                        wordSpacing: .5,
                                        letterSpacing: .5,
                                        color: Colors.grey[500],
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 120,),



                          ],
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
/*
ElevatedButton(
style: ButtonStyle(
backgroundColor:
MaterialStateProperty
    .all(Colors.black),
textStyle:
MaterialStateProperty
    .all(TextStyle(
fontSize: 18)),
shape: MaterialStateProperty
    .all<RoundedRectangleBorder>(
RoundedRectangleBorder(
borderRadius:
BorderRadius.circular(
18.0),
//side: BorderSide(color: Colors.teal, width: 2.0)
))),
child: Text('Pay now',
style: TextStyle(
wordSpacing: .5,
//letterSpacing: .5,
fontWeight: FontWeight.bold,
fontSize: 14
),
),
onPressed: () {},
),*/
