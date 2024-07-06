import 'package:clay_containers/clay_containers.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';

class Money_Credit_Score extends StatefulWidget {
  const Money_Credit_Score({Key? key}) : super(key: key);

  @override
  _Money_AccountState createState() => _Money_AccountState();
}

class _Money_AccountState extends State<Money_Credit_Score> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String office="office.jpg";
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
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(18),
                              child: Container(
                                child: ClayContainer(
                                  emboss: true,
                                  color: HSLColor.fromColor(Colors.grey)
                                      .withLightness(0.17)
                                      .toColor(),
                                  height: 420,
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
                                    color: Colors.white,

                                    child: Container(
                                      child: Column(
                                        //mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 36, left: 15),
                                            child: Text(
                                              "BANK REWARD POINTS",
                                              style: TextStyle(
                                                  wordSpacing: .5,
                                                  letterSpacing: .5,
                                                  color: Colors.grey[600],
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 5, left: 15),
                                            child: Text(
                                              "across 5 cards ",
                                              style: TextStyle(
                                                  wordSpacing: .5,
                                                  letterSpacing: .5,
                                                  color: Colors.black38,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          const Divider(
                                            height: 30,
                                            thickness: .8,
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 25),
                                                child: Container(
                                                  height: 45,
                                                  width: 45,
                                                  margin:
                                                  const EdgeInsets.only(left: 25),
                                                  padding: const EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          5),
                                                      border: Border.all(
                                                          width: 0.5,
                                                          color:
                                                          Colors.black54)),
                                                  child: const Icon(
                                                    Icons.add_box_outlined,
                                                    color: Colors.black87,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              Column(
                                                children: [
                                                  const Padding(
                                                    padding:
                                                    EdgeInsets.only(
                                                        top: 10),
                                                    child: Text(
                                                      "hdfc dinner club i...",
                                                      style: TextStyle(
                                                          wordSpacing: .5,
                                                          letterSpacing: .5,
                                                          color: Colors.black87,
                                                          fontSize: 14,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.only(
                                                        top: 2, right: 63),
                                                    child: Text(
                                                      "XXXX 7818",
                                                      style: TextStyle(
                                                          wordSpacing: .5,
                                                          letterSpacing: .5,
                                                          color:
                                                          Colors.grey[600],
                                                          fontSize: 12,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.only(
                                                        top: 12, right: 75),
                                                    child: Text(
                                                      "Redeem",
                                                      style: TextStyle(
                                                          wordSpacing: .5,
                                                          letterSpacing: .5,
                                                          color:
                                                          Colors.blue[900],
                                                          fontSize: 14,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.only(
                                                        right: 75),
                                                    child: Text(
                                                      "............",
                                                      style: TextStyle(
                                                          wordSpacing: .5,
                                                          letterSpacing: .5,
                                                          color:
                                                          Colors.blue[900],
                                                          fontSize: 14,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 50, left: 10),
                                                child: Text(
                                                  "24,663",
                                                  style: TextStyle(
                                                      wordSpacing: .5,
                                                      letterSpacing: .5,
                                                      color: Colors.black87,
                                                      fontSize: 14,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 0),
                                                child: Container(
                                                  height: 45,
                                                  width: 45,
                                                  margin:
                                                  const EdgeInsets.only(left: 25),
                                                  padding: const EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          5),
                                                      border: Border.all(
                                                          width: 0.5,
                                                          color:
                                                          Colors.black54)),
                                                  child: const Icon(
                                                    Icons.add_box_outlined,
                                                    color: Colors.black87,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              Column(
                                                children: [
                                                  const Padding(
                                                    padding:
                                                    EdgeInsets.only(
                                                        top: 10, right: 63),
                                                    child: Text(
                                                      "icici bank",
                                                      style: TextStyle(
                                                          wordSpacing: .5,
                                                          letterSpacing: .5,
                                                          color: Colors.black87,
                                                          fontSize: 14,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.only(
                                                        top: 2, right: 63),
                                                    child: Text(
                                                      "XXXX 1007",
                                                      style: TextStyle(
                                                          wordSpacing: .5,
                                                          letterSpacing: .5,
                                                          color:
                                                          Colors.grey[600],
                                                          fontSize: 12,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 10, left: 35),
                                                child: Text(
                                                  "n/a",
                                                  style: TextStyle(
                                                      wordSpacing: .5,
                                                      letterSpacing: .5,
                                                      color: Colors.black87,
                                                      fontSize: 14,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 0),
                                                child: Container(
                                                  height: 45,
                                                  width: 45,
                                                  margin:
                                                  const EdgeInsets.only(left: 25),
                                                  padding: const EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          5),
                                                      border: Border.all(
                                                          width: 0.5,
                                                          color:
                                                          Colors.black54)),
                                                  child: const Icon(
                                                    Icons.add_box_outlined,
                                                    color: Colors.black87,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              Column(
                                                children: [
                                                  const Padding(
                                                    padding:
                                                    EdgeInsets.only(
                                                        top: 10, right: 63),
                                                    child: Text(
                                                      "hdfc bank",
                                                      style: TextStyle(
                                                          wordSpacing: .5,
                                                          letterSpacing: .5,
                                                          color: Colors.black87,
                                                          fontSize: 14,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.only(
                                                        top: 2, right: 63),
                                                    child: Text(
                                                      "XXXX 5210",
                                                      style: TextStyle(
                                                          wordSpacing: .5,
                                                          letterSpacing: .5,
                                                          color:
                                                          Colors.grey[600],
                                                          fontSize: 12,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 10, left: 35),
                                                child: Text(
                                                  "n/a",
                                                  style: TextStyle(
                                                      wordSpacing: .5,
                                                      letterSpacing: .5,
                                                      color: Colors.black87,
                                                      fontSize: 14,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, top: 30),
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.black),
                                                  textStyle:
                                                  MaterialStateProperty.all(
                                                      const TextStyle(
                                                          fontSize: 18)),
                                                  shape: MaterialStateProperty
                                                      .all<RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                        //side: BorderSide(color: Colors.teal, width: 2.0)
                                                      ))),
                                              child: const Text(
                                                'View all',
                                                style: TextStyle(
                                                    wordSpacing: .5,
                                                    //letterSpacing: .5,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14),
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(18),
                              child: Container(
                                child: ClayContainer(
                                  emboss: true,
                                  color: HSLColor.fromColor(Colors.grey)
                                      .withLightness(0.17)
                                      .toColor(),
                                  height: 1420,
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
                                    color: Colors.white,

                                    child: Container(
                                      child: Column(
                                        //mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.only(
                                                        top: 36, left: 15),
                                                    child: Text(
                                                      "OFFERS (1152)",
                                                      style: TextStyle(
                                                          wordSpacing: .5,
                                                          letterSpacing: .5,
                                                          color:
                                                          Colors.grey[600],
                                                          fontSize: 12,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                  ),
                                                  const Padding(
                                                    padding:
                                                    EdgeInsets.only(
                                                        top: 5, left: 15),
                                                    child: Text(
                                                      "across 5 cards ",
                                                      style: TextStyle(
                                                          wordSpacing: .5,
                                                          letterSpacing: .5,
                                                          color: Colors.black38,
                                                          fontSize: 12,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                height: 35,
                                                width: 35,
                                                margin: const EdgeInsets.only(
                                                    left: 55, top: 30),
                                                padding:
                                                const EdgeInsets.only(left: 0),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        20),
                                                    border: Border.all(
                                                        width: 0.5,
                                                        color: Colors.black54)),
                                                child: const Icon(
                                                  Icons.add_box_outlined,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 6,
                                              ),
                                              Container(
                                                height: 35,
                                                width: 35,
                                                margin:
                                                const EdgeInsets.only(top: 30),
                                                padding:
                                                const EdgeInsets.only(left: 0),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        20),
                                                    border: Border.all(
                                                        width: 0.5,
                                                        color: Colors.black54)),
                                                child: const Icon(
                                                  Icons.add_box_outlined,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 6,
                                              ),
                                              Container(
                                                height: 35,
                                                width: 35,
                                                margin:
                                                const EdgeInsets.only(top: 30),
                                                padding:
                                                const EdgeInsets.only(left: 7,top: 7),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        20),
                                                    border: Border.all(
                                                        width: 0.5,
                                                        color: Colors.black54)),
                                                child: const Text(
                                                  "+3",
                                                  style: TextStyle(
                                                      wordSpacing: .5,
                                                      letterSpacing: .5,
                                                      color: Colors.black38,
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Divider(
                                            height: 30,
                                            thickness: .8,
                                          ),

                                          Row(
                                            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                child: Column(
                                                  // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                                  crossAxisAlignment:CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 160,
                                                      width: 137,
                                                      child: Card(

                                                        semanticContainer: true,
                                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                                        child: Image.asset('assets/office.jpg',
                                                            fit: BoxFit.fill),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10.0),
                                                        ),
                                                        elevation: 5,
                                                        margin: const EdgeInsets.all(10),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(left: 12,top: 7),
                                                      child: Text("amazon.in",
                                                        style: TextStyle(
                                                            wordSpacing: .5,
                                                            letterSpacing: .5,
                                                            color: Colors.black,
                                                            fontSize: 14,
                                                            fontWeight:
                                                            FontWeight.bold),

                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(left: 10,top: 10),
                                                      child: Text("5.5% cashback",
                                                        style: TextStyle(
                                                            wordSpacing: .5,
                                                            letterSpacing: .5,
                                                            color: Colors.black38,
                                                            fontSize: 12,
                                                            fontWeight:
                                                            FontWeight.bold),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(left: 10,top: 5),
                                                      child: Text("on amazon.in",
                                                        style: TextStyle(
                                                            wordSpacing: .5,
                                                            letterSpacing: .5,
                                                            color: Colors.black38,
                                                            fontSize: 12,
                                                            fontWeight:
                                                            FontWeight.bold),

                                                      ),
                                                    ),


                                                  ],
                                                ),
                                              ),
                                              Container(
                                                child: Column(
                                                  // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                                  crossAxisAlignment:CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 160,
                                                      width: 137,
                                                      child: Card(

                                                        semanticContainer: true,
                                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                                        child: Image.asset('assets/$office',
                                                            fit: BoxFit.fill),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10.0),
                                                        ),
                                                        elevation: 5,
                                                        margin: const EdgeInsets.all(10),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(left: 12,top: 7),
                                                      child: Text("gaana.com",
                                                        style: TextStyle(
                                                            wordSpacing: .5,
                                                            letterSpacing: .5,
                                                            color: Colors.black,
                                                            fontSize: 14,
                                                            fontWeight:
                                                            FontWeight.bold),

                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(left: 10,top: 10),
                                                      child: Text("free gaana plus",
                                                        style: TextStyle(
                                                            wordSpacing: .5,
                                                            letterSpacing: .5,
                                                            color: Colors.black38,
                                                            fontSize: 12,
                                                            fontWeight:
                                                            FontWeight.bold),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(left: 10,top: 5),
                                                      child: Text("subscription",
                                                        style: TextStyle(
                                                            wordSpacing: .5,
                                                            letterSpacing: .5,
                                                            color: Colors.black38,
                                                            fontSize: 12,
                                                            fontWeight:
                                                            FontWeight.bold),

                                                      ),
                                                    ),


                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),

                                          const SizedBox(height: 10,),

                                          Cards(text1:"amazon.in" ,text2: "5.5% cashback",text3:"on amazon.in" ,text4:"gaana.com" ,text5:"free gaana plus" ,text6:"subscription" ,image1:"office.jpg" ,image2:"office.jpg" ,),

                                          Cards(text1:"amazon.in" ,text2: "5.5% cashback",text3:"on amazon.in" ,text4:"gaana.com" ,text5:"free gaana plus" ,text6:"subscription" ,image1:"office.jpg" ,image2:"office.jpg" ,),
                                          Cards(text1:"amazon.in" ,text2: "5.5% cashback",text3:"on amazon.in" ,text4:"gaana.com" ,text5:"free gaana plus" ,text6:"subscription" ,image1:"office.jpg" ,image2:"office.jpg" ,),
                                          Cards(text1:"amazon.in" ,text2: "5.5% cashback",text3:"on amazon.in" ,text4:"gaana.com" ,text5:"free gaana plus" ,text6:"subscription" ,image1:"office.jpg" ,image2:"office.jpg" ,),














                                          const SizedBox(height: 50,),






















                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, top: 30),
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.black),
                                                  textStyle:
                                                  MaterialStateProperty.all(
                                                      const TextStyle(
                                                          fontSize: 18)),
                                                  shape: MaterialStateProperty
                                                      .all<RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                        //side: BorderSide(color: Colors.teal, width: 2.0)
                                                      ))),
                                              child: const Text(
                                                'View all',
                                                style: TextStyle(
                                                    wordSpacing: .5,
                                                    //letterSpacing: .5,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14),
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
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

class Cards extends StatefulWidget {
  String text1;
  String text2;
  String text3;
  String image1;

  String text4;
  String text5;
  String text6;
  String image2;

  Cards({required this.text1,required this.text2,required this.text3,required this.image1,required this.text4,required this.text5,required this.text6,required this.image2});

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {


  @override
  Widget build(BuildContext context) {

    String imge1=widget.image1;
    String imge2=widget.image2;
    return Container(
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Column(
              // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Container(
                  height: 160,
                  width: 137,
                  child: Card(

                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset('assets/$imge1',
                        fit: BoxFit.fill),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12,top: 7),
                  child: Text(widget.text1,
                    style: const TextStyle(
                        wordSpacing: .5,
                        letterSpacing: .5,
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight:
                        FontWeight.bold),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text(widget.text2,
                    style: const TextStyle(
                        wordSpacing: .5,
                        letterSpacing: .5,
                        color: Colors.black38,
                        fontSize: 12,
                        fontWeight:
                        FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 5),
                  child: Text(widget.text3,
                    style: const TextStyle(
                        wordSpacing: .5,
                        letterSpacing: .5,
                        color: Colors.black38,
                        fontSize: 12,
                        fontWeight:
                        FontWeight.bold),

                  ),
                ),


              ],
            ),
          ),
          Container(
            child: Column(
              // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Container(
                  height: 160,
                  width: 137,
                  child: Card(

                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset('assets/$imge2',
                        fit: BoxFit.fill),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12,top: 7),
                  child: Text(widget.text4,
                    style: const TextStyle(
                        wordSpacing: .5,
                        letterSpacing: .5,
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight:
                        FontWeight.bold),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text(widget.text5,
                    style: const TextStyle(
                        wordSpacing: .5,
                        letterSpacing: .5,
                        color: Colors.black38,
                        fontSize: 12,
                        fontWeight:
                        FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 5),
                  child: Text(widget.text6,
                    style: const TextStyle(
                        wordSpacing: .5,
                        letterSpacing: .5,
                        color: Colors.black38,
                        fontSize: 12,
                        fontWeight:
                        FontWeight.bold),

                  ),
                ),


              ],
            ),
          ),

        ],
      ),
    );
  }
}