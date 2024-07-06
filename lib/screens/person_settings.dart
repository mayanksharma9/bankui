
import 'package:bankui/screens/home.dart';
import 'package:clay_containers/clay_containers.dart';

import 'package:flutter/material.dart';

//import 'package:neumorphic_container/neumorphic_container.dart';



class Person_Settings extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Person_Settings> with SingleTickerProviderStateMixin {
  static final backgroundColor = Colors.black87;
  static final highlightColor = Colors.white.withOpacity(0.05);
  static final shadowColor = Colors.black87;
  Color baseColor = Colors.black;
  double balance=337130;
  double creditcards=2;
  String name="SHYAM SUNDAR";
  String phonenumber="+91 60614 00009";


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
      // backgroundColor: Colors.blueGrey[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              height: height*0.175,
              child: Column(
                children: [
                  const SizedBox(height:22,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30,top: 60),
                        child: CircleAvatar(
                          radius: 21.40,


                          child: ClipRRect(
                            child: Image.asset('assets/shawaiz.jpg'),
                            borderRadius: BorderRadius.circular(50.0),
                          ),


                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 60,right: 28),
                            child: Text("Shyam",
                              style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,

                                  color:HSLColor.fromColor(Colors.white).withLightness(0.7).toColor(),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25,top: 6),
                            child: Text("$phonenumber",
                              style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,

                                  color: Colors.grey[700],
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold

                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80,top: 60),
                        child: InkWell(
                          onTap: (){
                            Navigator.pop(context);
                            },
                          child: NeumorphicContainer(
                            child: Container(
                              child: Icon(Icons.close,
                                color: Colors.grey[400],
                              ),
                            ),
                            borderColor: Colors.grey,

                            height: 40,
                            width: 40,
                            borderRadius:50,
                            primaryColor: Colors.blueGrey,
                            spread: 6,
                            //convex neumorphism design
                            curvature: Curvature.convex,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(

                child: ClayContainer(
                  emboss: true,
                  color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),


                  height: 225,
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
                        padding: const EdgeInsets.only(left: 30,top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [



                            Container(
                              child:const Text("Know your credit score.",style: TextStyle( wordSpacing: .5,
                                  letterSpacing: .5,

                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(
                                child:const Text("inside out.",style: TextStyle( wordSpacing: .5,
                                    letterSpacing: .5,

                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),

                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                child:const Text("view credit score and all insights",style: TextStyle(
                                    wordSpacing: .5,
                                    letterSpacing: .5,

                                    color: Colors.black38,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold

                                ),),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Container(
                                child:const Text("sourced from your credit card",style: TextStyle(
                                    wordSpacing: .5,
                                    letterSpacing: .5,

                                    color: Colors.black38,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold

                                ),

                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(

                                child: ElevatedButton(

                                  style: ButtonStyle(

                                      backgroundColor: MaterialStateProperty.all(Colors.black),
                                      textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 30)),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        //side: BorderSide(color: Colors.teal, width: 2.0)
                                      ))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Text('View now',
                                      style: TextStyle(
                                          wordSpacing: .5,

                                          fontWeight: FontWeight.bold,
                                          fontSize: 13
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
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
            const Divider(
              height: 70,
              thickness: 4,

            ),
            Padding(
              padding: const EdgeInsets.only(right:211),
              child: Text("refer and earn",
                style: TextStyle(
                    wordSpacing: .5,
                    letterSpacing: .5,

                    color: Colors.grey[700],
                    fontSize: 13,
                    fontWeight: FontWeight.bold

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 126),
              child: Text("unlock exclusive cash-back",
                style: TextStyle(
                    wordSpacing: .5,
                    letterSpacing: .5,

                    color: Colors.grey[400],
                    fontSize: 13,
                    fontWeight: FontWeight.bold

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 23),
              child: Container(

                child: ClayContainer(
                  emboss: true,
                  color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),


                  height: 225,
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
                    color:HSLColor.fromColor(Colors. blueAccent).withLightness(0.9).toColor(),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30,top: 40),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [



                            Container(
                              child:const Text("assured rewards for ",style: TextStyle( wordSpacing: .5,
                                  letterSpacing: .5,

                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(
                                child:const Text("bringing friends to",style: TextStyle( wordSpacing: .5,
                                    letterSpacing: .5,

                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),

                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                child:const Text("CRED",style: TextStyle( wordSpacing: .5,
                                    letterSpacing: .5,

                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),

                                ),
                              ),
                            ),

                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(

                                child: ElevatedButton(

                                  style: ButtonStyle(

                                      backgroundColor: MaterialStateProperty.all(Colors.black),
                                      textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 30)),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        //side: BorderSide(color: Colors.teal, width: 2.0)
                                      ))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Text('Know more',
                                      style: TextStyle(
                                          wordSpacing: .5,

                                          fontWeight: FontWeight.bold,
                                          fontSize: 13
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
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

            const Divider(
              height: 70,
              thickness: 4,

            ),
            Padding(
              padding: const EdgeInsets.only(right:79),
              child: Text("linked email ids and bank accounts",
                style: TextStyle(
                    wordSpacing: .5,
                    letterSpacing: .5,

                    color: Colors.grey[700],
                    fontSize: 13,
                    fontWeight: FontWeight.bold

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 165),
              child: Text("manage CRED protect",
                style: TextStyle(
                    wordSpacing: .5,
                    letterSpacing: .5,

                    color: Colors.grey[400],
                    fontSize: 13,
                    fontWeight: FontWeight.bold

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 23),
              child: Container(

                child: ClayContainer(
                  emboss: true,
                  color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),


                  height: 225,
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
                    color:HSLColor.fromColor(Colors.white).withLightness(.8).toColor(),



                    child: Container(

                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [



                            Container(
                              child:const Text("CRED product activated",style: TextStyle( wordSpacing: .5,
                                  letterSpacing: .5,

                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                child:const Text("smart statements,",style: TextStyle(
                                    wordSpacing: .5,
                                    letterSpacing: .5,

                                    color: Colors.black38,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold

                                ),),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Container(
                                child:const Text("payment reminders",style: TextStyle(
                                    wordSpacing: .5,
                                    letterSpacing: .5,

                                    color: Colors.black38,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold

                                ),

                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Container(
                                child:const Text("and more",style: TextStyle(
                                    wordSpacing: .5,
                                    letterSpacing: .5,

                                    color: Colors.black38,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold

                                ),

                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(

                                child: ElevatedButton(

                                  style: ButtonStyle(

                                      backgroundColor: MaterialStateProperty.all(Colors.black),
                                      textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 30)),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        //side: BorderSide(color: Colors.teal, width: 2.0)
                                      ))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Text('Manage',
                                      style: TextStyle(
                                          wordSpacing: .5,

                                          fontWeight: FontWeight.bold,
                                          fontSize: 13
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
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

            const Divider(
              height: 70,
              thickness: 4,

            ),
            Padding(
              padding: const EdgeInsets.only(right:218),
              child: Text("CRED rent pay",
                style: TextStyle(
                    wordSpacing: .5,
                    letterSpacing: .5,

                    color: Colors.grey[700],
                    fontSize: 13,
                    fontWeight: FontWeight.bold

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 154),
              child: Text("pay your upcoming rent",
                style: TextStyle(
                    wordSpacing: .5,
                    letterSpacing: .5,

                    color: Colors.grey[400],
                    fontSize: 13,
                    fontWeight: FontWeight.bold

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 23),
              child: Container(

                child: ClayContainer(
                  emboss: true,
                  color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),


                  height: 200,
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
                    color:HSLColor.fromColor(Colors. blueAccent).withLightness(0.9).toColor(),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30,top: 40),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [



                            Container(
                              child:const Text("pay your rent with a credit ",style: TextStyle( wordSpacing: .5,
                                  letterSpacing: .5,

                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(
                                child:const Text("card. it's rewarding.",style: TextStyle( wordSpacing: .5,
                                    letterSpacing: .5,

                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),

                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                child:const Text("CRED",style: TextStyle( wordSpacing: .5,
                                    letterSpacing: .5,

                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),

                                ),
                              ),
                            ),

                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(

                                child: ElevatedButton(

                                  style: ButtonStyle(

                                      backgroundColor: MaterialStateProperty.all(Colors.black),
                                      textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 30)),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        //side: BorderSide(color: Colors.teal, width: 2.0)
                                      ))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Text('Pay now',
                                      style: TextStyle(
                                          wordSpacing: .5,

                                          fontWeight: FontWeight.bold,
                                          fontSize: 13
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
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


            const Divider(
              height: 70,
              thickness: 4,

            ),
            Padding(
              padding: const EdgeInsets.only(right:130),
              child: Text("your coin and gem balance",
                style: TextStyle(
                    wordSpacing: .5,
                    letterSpacing: .5,

                    color: Colors.grey[700],
                    fontSize: 13,
                    fontWeight: FontWeight.bold

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 170),
              child: Text("as on 27th aug 2021",
                style: TextStyle(
                    wordSpacing: .5,
                    letterSpacing: .5,

                    color: Colors.grey[400],
                    fontSize: 13,
                    fontWeight: FontWeight.bold

                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 23),
                  child: Container(

                    child: ClayContainer(
                      emboss: true,
                      color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),


                      height: 190,
                      width: 155,

                      spread: 7,
                      depth:10,
                      borderRadius: 25,
                      child: Card(

                        shape: RoundedRectangleBorder(
                          side: BorderSide(color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),),
                          borderRadius: BorderRadius.circular(21),
                        ),
                        //color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
                        color:HSLColor.fromColor(Colors.indigo).withLightness(0.7).toColor(),
                        child: Padding(
                          padding: const EdgeInsets.only(left:20,top: 20),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: const Icon(Icons.monetization_on_outlined, color: Colors.white,),
                                ),
                                const SizedBox(
                                  height:38,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    child: Text("coin\nbalance", style: TextStyle(
                                        wordSpacing: .5,
                                        color: Colors.grey[300],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                    ),),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(child: Text("$balance",  style: const TextStyle(
                                      wordSpacing: .5,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                  ),),),
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
                  padding: const EdgeInsets.only(top: 23),
                  child: Container(

                    child: ClayContainer(
                      emboss: true,
                      color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),


                      height: 190,
                      width: 155,

                      spread: 7,
                      depth:10,
                      borderRadius: 25,
                      child: Card(

                        shape: RoundedRectangleBorder(
                          side: BorderSide(color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),),
                          borderRadius: BorderRadius.circular(21),
                        ),
                        //color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
                        color:HSLColor.fromColor(Colors.indigo).withLightness(0.7).toColor(),
                        child: Padding(
                          padding: const EdgeInsets.only(left:20,top: 20),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: const Icon(Icons.flash_on, color: Colors.white,),
                                ),
                                const SizedBox(
                                  height:38,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    child: Text("gem\nbalance", style: TextStyle(
                                        wordSpacing: .5,
                                        color: Colors.grey[300],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                    ),),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(child: Text("$balance",  style: const TextStyle(
                                      wordSpacing: .5,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                  ),),),
                                ),



                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),


            const Divider(
              height: 100,
              thickness: 2,

            ),
            Padding(
              padding: const EdgeInsets.only(right:195),
              child: Text("your credit cards",
                style: TextStyle(
                    wordSpacing: .5,
                    letterSpacing: .5,

                    color: Colors.grey[700],
                    fontSize: 13,
                    fontWeight: FontWeight.bold

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 148),
              child: Text("you have $creditcards creditcards",
                style: TextStyle(
                    wordSpacing: .5,
                    letterSpacing: .5,

                    color: Colors.grey[400],
                    fontSize: 13,
                    fontWeight: FontWeight.bold

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(

                child: ClayContainer(
                  emboss: true,
                  color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),


                  height: 205,
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
                    color:HSLColor.fromColor(Colors.grey).withLightness(0.45).toColor(),




                    child: Container(




                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [



                            Container(
                              child:const Text("HDFC DINERS CLUB\nINTERNATIONAL ",style: TextStyle( wordSpacing: .5,
                                  letterSpacing: .5,

                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),),
                            ),
                            /*Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(
                                child:Text("INTERNATIONAL",style: TextStyle( wordSpacing: .5,
                                    letterSpacing: .5,

                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),

                                ),
                              ),
                            ),*/
                            const SizedBox(height: 55,),
                            const Text("3610 XXXXXX 7810",
                              style: TextStyle(
                                  wordSpacing: 1,
                                  letterSpacing: 2.5,

                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold

                              ),
                            ),
                            const SizedBox(height: 25,),
                            Text("$name",
                              style: const TextStyle(
                                  wordSpacing: 4,
                                  letterSpacing: 2.5,

                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold

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
              padding: const EdgeInsets.only(top: 30),
              child: Container(

                child: ClayContainer(
                  emboss: true,
                  color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),


                  height: 205,
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
                    color:HSLColor.fromColor(Colors.blue).withLightness(0.7).toColor(),




                    child: Container(




                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [



                            Container(
                              child:const Text("CITIBANK CITIZEN GOLD ",style: TextStyle( wordSpacing: .5,
                                  letterSpacing: .5,

                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),),
                            ),
                            /*Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(
                                child:Text("INTERNATIONAL",style: TextStyle( wordSpacing: .5,
                                    letterSpacing: .5,

                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),

                                ),
                              ),
                            ),*/
                            const SizedBox(height: 55,),
                            const Text("4387 85XX XXXX 7810",
                              style: TextStyle(
                                  wordSpacing: 1,
                                  letterSpacing: 2.5,

                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold

                              ),
                            ),
                            const SizedBox(height: 25,),
                            Text("$name",
                              style: const TextStyle(
                                  wordSpacing: 4,
                                  letterSpacing: 2.5,

                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold

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

            const Divider(
              height: 100,
              thickness: 2,

            ),
            Padding(
              padding: const EdgeInsets.only(right:235),
              child: Text("SETTINGS",
                style: TextStyle(
                    wordSpacing: .5,
                    letterSpacing: .5,

                    color: Colors.grey[700],
                    fontSize: 13,
                    fontWeight: FontWeight.bold

                ),
              ),
            ),



            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.headset_mic_outlined,
                        color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),
                      ),
                      title:Text("support",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400]

                        ),
                      ),
                      trailing: Icon(Icons.chevron_right,
                          color: Colors.grey[400]
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.cloud_circle_outlined,
                        color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),
                      ),
                      title:Text("manage account",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400]

                        ),
                      ),
                      trailing: Icon(Icons.chevron_right,
                          color: Colors.grey[400]
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.history_edu_rounded,
                        color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),
                      ),
                      title:Text("payment history",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400]

                        ),
                      ),
                      trailing: Icon(Icons.chevron_right,
                          color: Colors.grey[400]
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.card_membership_outlined,
                        color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),
                      ),
                      title:Text("payment settings",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400]

                        ),
                      ),
                      trailing: Icon(Icons.chevron_right,
                          color: Colors.grey[400]
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.handyman_rounded,
                        color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),
                      ),
                      title:Text("manage addresses",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400]

                        ),
                      ),
                      trailing: Icon(Icons.chevron_right,
                          color: Colors.grey[400]
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.info_outline,
                        color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),
                      ),
                      title:Text("about",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400]

                        ),
                      ),
                      trailing: Icon(Icons.chevron_right,
                          color: Colors.grey[400]
                      ),
                    ),
                  ],
                ),



              ),
            ),

          ],
        ),
      ),
    );
  }
}
/*
import 'dart:ui';

import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';


class Next extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Next> with SingleTickerProviderStateMixin {
  static final backgroundColor = Colors.black87;
  static final highlightColor = Colors.white.withOpacity(0.05);
  static final shadowColor = Colors.black87;
  Color baseColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
        // backgroundColor: Colors.blueGrey[900],
        body: Center(
          child:ClayContainer(
            emboss: true,
            color: HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
            height: 170,

            depth:8,
            width: 170,
            borderRadius: 14,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Card(

                shape: RoundedRectangleBorder(
                  side: BorderSide(color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),),
                  borderRadius: BorderRadius.circular(16),
                ),
                //color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
                color:HSLColor.fromColor(Colors.indigo).withLightness(0.7).toColor(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}*/







