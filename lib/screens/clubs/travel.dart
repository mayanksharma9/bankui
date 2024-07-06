
import 'package:clay_containers/clay_containers.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';

class Travel extends StatefulWidget {
  const Travel({Key? key}) : super(key: key);

  @override
  _maxState createState() => _maxState();
}

class _maxState extends State<Travel> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String name="SHYAM SUNDAR";
    String not_paid="1,81,875";
    String charges_detected="₹934.43";
    return  SafeArea(
        child: Scaffold(
            backgroundColor:  HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),
            appBar: AppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: 65,
              backgroundColor:  HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),
              elevation: 0,
              title:  Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ClayContainer(
                      emboss: true,
                      color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),


                      height: 27,
                      width: 100,

                      spread: 4.5,
                      depth:14,
                      borderRadius: 24,

                      child: Card(




                        shape: RoundedRectangleBorder(

                          side: BorderSide(color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),),
                          borderRadius: BorderRadius.circular(21),

                        ),


                        color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
                        // color:HSLColor.fromColor(Colors.brown).withLightness(0.6).toColor(),



                        child: Container(
                            child: Row(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left: 6),
                                  child: RichText(
                                    text: TextSpan(
                                      text: '₹  ',
                                      style: TextStyle(
                                          wordSpacing: .5,
                                          letterSpacing: .5,
                                          color: Colors.brown[400],
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                      /*defining default style is optional */
                                      children: <TextSpan>[
                                        const TextSpan(text: '3,37,134',
                                          style: TextStyle(
                                              wordSpacing: .5,
                                              letterSpacing: .5,
                                              color: Colors.white60 ,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),


                                        ),

                                      ],
                                    ),
                                  ),
                                ),


                              ],
                            )
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 83),
                    child: ClayContainer(

                      color:  HSLColor.fromColor(Colors.grey).withLightness(0.18).toColor(),
                      height: 30,
                      width: 105,
                      spread: 5,
                      depth: 20,
                      borderRadius: 20,
                      curveType: CurveType.convex,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(Icons.military_tech_rounded,
                              color: Colors.brown[500],
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:4,top:0),
                            child: Text("bookings",
                              style: TextStyle( wordSpacing: .5,
                                  letterSpacing: .5,

                                  color: HSLColor.fromColor(Colors.grey).withLightness(0.5).toColor(),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ],
                      ),

                    ),
                  ),

                ],
              ),

            ),
            body:SingleChildScrollView(
              child: Container(


                //margin: EdgeInsets.only(bottom: bottom),
                child: Column(
                  children: [



                    const SizedBox(height: 50,),

                    const Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Text("international steals: ends on  31st August",
                        style: TextStyle(
                            wordSpacing: .5,
                            letterSpacing: .5,
                            color: Colors.white60 ,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Container(
                      child: Column(
                        // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment:CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 370,
                            width: 320,
                            child: Card(

                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Container(

                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset('assets/watch.jpeg',
                                          fit: BoxFit.fill),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 30,left: 20),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 6,bottom: 7),
                                            child: Text("fill up your passport.",
                                              style: TextStyle(
                                                  wordSpacing: .5,
                                                  letterSpacing: .5,
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 30),
                                            child: Text("at upto 60% off.",
                                              style: TextStyle(
                                                  wordSpacing: .5,
                                                  letterSpacing: .5,
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 5,
                              margin: const EdgeInsets.all(10),

                            ),
                          ),

                          const SizedBox(
                            height: 30,
                          ),




                          const Padding(
                            padding: EdgeInsets.only(right:100),
                            child: Text("travel till 29th October 2021",
                              style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,
                                  color: Colors.white60 ,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 370,
                            width: 320,
                            child: Card(

                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Container(

                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset('assets/market.jpg',
                                          fit: BoxFit.fill),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 30,left: 20),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 6,bottom: 7),
                                            child: Text("fill up your passport.",
                                              style: TextStyle(
                                                  wordSpacing: .5,
                                                  letterSpacing: .5,
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 30),
                                            child: Text("at upto 60% off.",
                                              style: TextStyle(
                                                  wordSpacing: .5,
                                                  letterSpacing: .5,
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 5,
                              margin: const EdgeInsets.all(10),

                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),





                          const Padding(
                            padding: EdgeInsets.only(right: 65),
                            child: Text("limited period offer: curated gifts",
                              style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,
                                  color: Colors.white60 ,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 370,
                            width: 320,
                            child: Card(

                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Container(

                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset('assets/cook1.jpg',
                                          fit: BoxFit.fill),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 30,left: 20),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 6,bottom: 7),
                                            child: Text("win the license to ",
                                              style: TextStyle(
                                                  wordSpacing: .5,
                                                  letterSpacing: .5,
                                                  color: Colors.white,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                          Text("flaunt your wrist ",
                                            style: TextStyle(
                                                wordSpacing: .5,
                                                letterSpacing: .5,
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 5,
                              margin: const EdgeInsets.all(10),

                            ),
                          ),



                          const SizedBox(
                            height: 30,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 105),
                            child: Text("newly arrived on CRED store",
                              style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,
                                  color: Colors.white60 ,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 370,
                            width: 320,
                            child: Card(

                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Container(

                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset('assets/cook1.jpg',
                                          fit: BoxFit.fill),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 30,left: 20),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 6,bottom: 7),
                                            child: Text("win the license to ",
                                              style: TextStyle(
                                                  wordSpacing: .5,
                                                  letterSpacing: .5,
                                                  color: Colors.white,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                          Text("flaunt your wrist ",
                                            style: TextStyle(
                                                wordSpacing: .5,
                                                letterSpacing: .5,
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 5,
                              margin: const EdgeInsets.all(10),

                            ),
                          ),





                          const SizedBox(
                            height: 30,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 115),
                            child: Text("CRED select: limited units",
                              style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,
                                  color: Colors.white60 ,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 370,
                            width: 320,
                            child: Card(

                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Container(

                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset('assets/medicine.jpg',
                                          fit: BoxFit.fill),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 30,left: 20),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 6,bottom: 7),
                                            child: Text("win the license to ",
                                              style: TextStyle(
                                                  wordSpacing: .5,
                                                  letterSpacing: .5,
                                                  color: Colors.white,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                          Text("flaunt your wrist ",
                                            style: TextStyle(
                                                wordSpacing: .5,
                                                letterSpacing: .5,
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 5,
                              margin: const EdgeInsets.all(10),

                            ),
                          ),





                          const Padding(
                            padding: EdgeInsets.only(right: 85),
                            child: Text("new jackpots everyday at 7pm",
                              style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,
                                  color: Colors.white60 ,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  height: 190,
                                  width: 160,
                                  child: Card(

                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Container(

                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: Image.asset('assets/watch.jpeg',
                                                fit: BoxFit.fill),
                                          ),


                                        ],
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                    elevation: 5,


                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  height: 190,
                                  width: 160,
                                  child: Card(

                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Container(

                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: Image.asset('assets/watch.jpeg',
                                                fit: BoxFit.fill),
                                          ),


                                        ],
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                    elevation: 5,
                                    // margin: EdgeInsets.all(10),

                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  height: 190,
                                  width: 160,
                                  child: Card(

                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Container(

                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: Image.asset('assets/watch.jpeg',
                                                fit: BoxFit.fill),
                                          ),


                                        ],
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                    elevation: 5,


                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  height: 190,
                                  width: 160,
                                  child: Card(

                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Container(

                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: Image.asset('assets/watch.jpeg',
                                                fit: BoxFit.fill),
                                          ),


                                        ],
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                    elevation: 5,
                                    // margin: EdgeInsets.all(10),

                                  ),
                                ),
                              ),
                            ],
                          ),


                          const SizedBox(
                            height: 30,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 160),
                            child: Text("upcoming jackpots",
                              style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,
                                  color: Colors.white60 ,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  height: 190,
                                  width: 160,
                                  child: Card(

                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Container(

                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: Image.asset('assets/office2.jpg',
                                                fit: BoxFit.fill),
                                          ),


                                        ],
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                    elevation: 5,


                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  height: 190,
                                  width: 160,
                                  child: Card(

                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Container(

                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: Image.asset('assets/cook1.jpg',
                                                fit: BoxFit.fill),
                                          ),


                                        ],
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                    elevation: 5,
                                    // margin: EdgeInsets.all(10),

                                  ),
                                ),
                              ),
                            ],
                          ),




                          const SizedBox(
                            height: 40,
                          ),

                          Container(
                            height: 320,
                            width: 320,
                            child: Card(

                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Container(

                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset('assets/watch.jpeg',
                                          fit: BoxFit.fill),
                                    ),


                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22.0),
                              ),
                              elevation: 5,


                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 160),
                            child: Text("upcoming jackpots",
                              style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,
                                  color: Colors.white60 ,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  height: 190,
                                  width: 160,
                                  child: Card(

                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Container(

                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: Image.asset('assets/office2.jpg',
                                                fit: BoxFit.fill),
                                          ),


                                        ],
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                    elevation: 5,


                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  height: 190,
                                  width: 160,
                                  child: Card(

                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Container(

                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: Image.asset('assets/cook1.jpg',
                                                fit: BoxFit.fill),
                                          ),


                                        ],
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                    elevation: 5,
                                    // margin: EdgeInsets.all(10),

                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              height: 320,
                              width: 320,
                              child: Card(

                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(

                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: Image.asset('assets/cook1.jpg',
                                            fit: BoxFit.fill),
                                      ),


                                    ],
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                elevation: 5,
                                // margin: EdgeInsets.all(10),

                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 50,
                          ),

                          const Padding(
                            padding: EdgeInsets.only(right: 135),
                            child: Text("assures mystery rewards",
                              style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,
                                  color: Colors.white60 ,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  height: 190,
                                  width: 160,
                                  child: Card(

                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Container(

                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: Image.asset('assets/office2.jpg',
                                                fit: BoxFit.fill),
                                          ),


                                        ],
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                    elevation: 5,


                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  height: 190,
                                  width: 160,
                                  child: Card(

                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Container(

                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: Image.asset('assets/cook1.jpg',
                                                fit: BoxFit.fill),
                                          ),


                                        ],
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                    elevation: 5,
                                    // margin: EdgeInsets.all(10),

                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  height: 190,
                                  width: 160,
                                  child: Card(

                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Container(

                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: Image.asset('assets/medicine.jpg',
                                                fit: BoxFit.fill),
                                          ),


                                        ],
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                    elevation: 5,


                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  height: 190,
                                  width: 160,
                                  child: Card(

                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Container(

                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: Image.asset('assets/office.jpg',
                                                fit: BoxFit.fill),
                                          ),


                                        ],
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                    elevation: 5,
                                    // margin: EdgeInsets.all(10),

                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 370,
                              width: 320,
                              child: Card(

                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(

                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: Image.asset('assets/office2.jpg',
                                            fit: BoxFit.fill),
                                      ),


                                    ],
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0),
                                ),
                                elevation: 5,


                              ),
                            ),
                          ),
                          const SizedBox(height: 40,),

                          const SizedBox(height: 40,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 320,
                              width: 320,
                              child: Card(
                                color: Colors.orange,

                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(

                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: Image.asset('assets/cook1.jpg',
                                            fit: BoxFit.fill),

                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 195),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left: 25),
                                              child: Text("we will take care",
                                                style: TextStyle(
                                                    wordSpacing: .5,
                                                    letterSpacing: .5,
                                                    color: Colors.yellow,
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w900),

                                              ),
                                            ),
                                            Text("of your pizza",
                                              style: TextStyle(
                                                  wordSpacing: .5,
                                                  letterSpacing: .5,
                                                  color: Colors.white,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900),

                                            ),
                                            Text("cravings",
                                              style: TextStyle(
                                                  wordSpacing: .5,
                                                  letterSpacing: .5,
                                                  color: Colors.white,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900),

                                            ),
                                          ],
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0),
                                ),
                                elevation: 5,


                              ),
                            ),
                          ),


                          const SizedBox(height: 50,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 370,
                              width: 320,
                              child: Card(

                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(

                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: Image.asset('assets/market.jpg',
                                            fit: BoxFit.fill),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 20,left: 13),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left: 25),
                                              child: Text("earn from ₹250 to ₹10000",
                                                style: TextStyle(
                                                    wordSpacing: 1.0,
                                                    letterSpacing: .5,
                                                    color: Colors.white,
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w700),

                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 14),
                                              child: Text("for your friends payment",
                                                style: TextStyle(
                                                    wordSpacing: 1,
                                                    letterSpacing: .5,
                                                    color: Colors.white,
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w700),

                                              ),
                                            ),

                                          ],
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0),
                                ),
                                elevation: 5,


                              ),
                            ),
                          ),
                          const SizedBox(height: 50,),



                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 170,
                              width: 320,
                              child: Card(

                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(

                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: Image.asset('assets/market.jpg',
                                            fit: BoxFit.fill),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 60,left: 13),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left: 10),
                                              child: Text("earn upto",
                                                style: TextStyle(
                                                    wordSpacing: 1.0,
                                                    letterSpacing: .5,
                                                    color: Colors.white70,
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w600),

                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(right: 8),
                                              child: Text("₹1,000",
                                                style: TextStyle(
                                                    wordSpacing: 1.0,
                                                    letterSpacing: .5,
                                                    color: Colors.white70,
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w600),

                                              ),
                                            ),


                                          ],
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0),
                                ),
                                elevation: 5,


                              ),
                            ),
                          ),
                          const SizedBox(height: 40,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 170,
                              width: 320,
                              child: Card(

                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(

                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: Image.asset('assets/watch.jpeg',
                                            fit: BoxFit.fill),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 35,left: 13),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left: 10),
                                              child: Text("earn upto",
                                                style: TextStyle(
                                                    wordSpacing: 1.0,
                                                    letterSpacing: .5,
                                                    color: Colors.white,
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w600),

                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(right: 8),
                                              child: Text("₹5,000",
                                                style: TextStyle(
                                                    wordSpacing: 1.0,
                                                    letterSpacing: .5,
                                                    color: Colors.white,
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w600),

                                              ),
                                            ),


                                          ],
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0),
                                ),
                                elevation: 5,


                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),

                          const Padding(
                            padding: EdgeInsets.only(right: 165),
                            child: Text("CRED Pay rewards",
                              style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,
                                  color: Colors.white60 ,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 190,
                              width: 320,
                              child: Card(
                                color:HSLColor.fromColor(Colors.brown).withLightness(0.5).toColor(),

                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(

                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        /*Positioned.fill(
                                          child: Image.asset('assets/office2.jpg',
                                              fit: BoxFit.fill),
                                        ),*/
                                        Padding(
                                          padding: const EdgeInsets.only(top: 35,left: 13),
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(right: 33),
                                                child: Text("add to your",
                                                  style: TextStyle(
                                                      wordSpacing: 1.0,
                                                      letterSpacing: .5,
                                                      color: Colors.white,
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w800),

                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(top:2,left: 10),
                                                child: Text("celebrations: shop",
                                                  style: TextStyle(
                                                      wordSpacing: 1.0,
                                                      letterSpacing: .5,
                                                      color: Colors.white,
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w800),

                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(top:2,right: 13),
                                                child: Text("with CRED Pay",
                                                  style: TextStyle(
                                                      wordSpacing: 1.0,
                                                      letterSpacing: .5,
                                                      color: Colors.white,
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w800),

                                                ),
                                              ),

                                              Padding(
                                                padding: const EdgeInsets.only(right: 5,top: 15),
                                                child: Container(
                                                  width: 100,
                                                  height: 30,
                                                  decoration: BoxDecoration(

                                                      color:HSLColor.fromColor(Colors.brown).withLightness(0.5).toColor(),
                                                      border: Border.all(
                                                        color: Colors.white.withOpacity(0.5),
                                                      ),
                                                      borderRadius: const BorderRadius.all(Radius.circular(20))

                                                  ),
                                                  child: Container(

                                                      child: const Padding(
                                                        padding: EdgeInsets.only(top: 6,left: 16),
                                                        child: Text("SHOP NOW",
                                                          style: TextStyle(
                                                              wordSpacing: 1.0,
                                                              letterSpacing: .5,
                                                              color: Colors.white,
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.w700),
                                                        ),
                                                      )
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 40,),



                                            ],
                                          ),
                                        ),


                                      ],
                                    ),
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0),
                                ),
                                elevation: 5,


                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 150,
                              width: 320,
                              child: Card(
                                color:HSLColor.fromColor(Colors.orangeAccent).withLightness(0.9).toColor(),

                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(

                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        /*Positioned.fill(
                                          child: Image.asset('assets/office2.jpg',
                                              fit: BoxFit.fill),
                                        ),*/
                                        Padding(
                                          padding: const EdgeInsets.only(top: 55,left: 33),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(right: 53),
                                                child: Text("come back ",
                                                  style: TextStyle(
                                                      wordSpacing: 1.0,
                                                      letterSpacing: .5,
                                                      color:HSLColor.fromColor(Colors.brown).withLightness(0.4).toColor(),
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w800),

                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top:0,right: 42),
                                                child: Text("tomorrow for",
                                                  style: TextStyle(
                                                      wordSpacing: 1.0,
                                                      letterSpacing: .5,
                                                      color:HSLColor.fromColor(Colors.brown).withLightness(0.4).toColor(),
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w800),

                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top:0,right: 38),
                                                child: Text("more rewards",
                                                  style: TextStyle(
                                                      wordSpacing: 1.0,
                                                      letterSpacing: .5,
                                                      color:HSLColor.fromColor(Colors.brown).withLightness(0.4).toColor(),
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w800),

                                                ),
                                              ),




                                            ],
                                          ),
                                        ),


                                      ],
                                    ),
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0),
                                ),
                                elevation: 5,


                              ),
                            ),
                          ),

                          const SizedBox(height: 50,),










                        ],
                      ),
                    ),






                  ],
                ),
              ),
            )
        ));
  }
}

