import 'package:bankui/screens/home.dart';
import 'package:flutter/material.dart';


class Manage_Customer_care extends StatefulWidget {
  const Manage_Customer_care({Key? key}) : super(key: key);

  @override
  _Manage_Customer_careState createState() => _Manage_Customer_careState();
}

class _Manage_Customer_careState extends State<Manage_Customer_care> {
  @override
  Widget build(BuildContext context) {
    String name = "Shyam Sundar";
    String bot = "credie,";
    String description = "your online support buddy.";
    String help = "What can i help you with today?";
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),
            body: Column(
              children: [
                Container(
                  height: height * 0.15,
                 // color: Colors.red,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: NeumorphicContainer(
                            child: Container(
                              child: Icon(Icons.arrow_back_ios,
                                color: Colors.grey[600],
                              ),
                            ),
                            borderColor: Colors.grey,

                            height: 40,
                            width: 40,
                            borderRadius:50,
                            primaryColor: Colors.grey,
                            spread: 6,
                            //convex neumorphism design
                            curvature: Curvature.convex,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 55, left: 15),
                        child: Container(
                          child: Container(
                              child: Icon(
                            Icons.info_outline_rounded,
                            color: Colors.brown[200],
                            size: 20,
                          )),
                          decoration: BoxDecoration(
                            color: Colors.brown[500],
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                                topLeft: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0)),
                          ),
                          width: 26,
                          height: 26,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 75,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                              //topLeft: Radius.circular(40.0),`
                              bottomLeft: Radius.circular(20.0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.sports_handball_outlined,
                                    color:
                                        HSLColor.fromColor(Colors.yellowAccent)
                                            .withLightness(0.4)
                                            .toColor(),
                                  ),
                                  Text(
                                    "good morning,",
                                    style: TextStyle(
                                        wordSpacing: .5,
                                        letterSpacing: .5,
                                        color: Colors.grey[600],
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "$name",
                                style: TextStyle(
                                    wordSpacing: .5,
                                    letterSpacing: .5,
                                    color: Colors.grey[500],
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 17,right: 25),
                  child: Container(
                    height: 85,
                    width: 220,
                    decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          //topLeft: Radius.circular(40.0),`
                          bottomLeft: Radius.circular(20.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18, left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "I am $bot",
                            style: TextStyle(
                                wordSpacing: .5,
                                letterSpacing: .5,
                                color: Colors.grey[500],
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Text(
                              "$description",
                              style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,
                                  color: Colors.grey[500],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Text(
                              "$help",
                              style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,
                                  color: Colors.grey[500],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Divider(
                    height: 30,
                    thickness: 3,
                  ),
                ),


                Column(
                  children: [
                    Row(

                      children: [
                        const SizedBox(width: 70,),
                        Container(
                          child: Container(
                            child: Icon(
                              Icons.person_search_outlined,
                              color: HSLColor.fromColor(Colors.red)
                                  .withLightness(0.8)
                                  .toColor(),
                            ),),
                          decoration: BoxDecoration(
                            color: HSLColor.fromColor(Colors.grey).withLightness(0.3).toColor(),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0)),
                          ),
                          width: 55,
                          height: 55,
                        ),
                        const SizedBox(width: 45,),
                        Container(
                          child: Container(
                            child: Icon(
                              Icons.payment_outlined,
                              color: HSLColor.fromColor(Colors.red)
                                  .withLightness(0.8)
                                  .toColor(),
                            ),),
                          decoration: BoxDecoration(
                            color: HSLColor.fromColor(Colors.grey).withLightness(0.3).toColor(),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0)),
                          ),
                          width: 55,
                          height: 55,
                        ),
                        const SizedBox(width: 45,),
                        Container(
                          child: Container(
                            child: Icon(
                              Icons.sanitizer_outlined,
                              color: HSLColor.fromColor(Colors.red)
                                  .withLightness(0.8)
                                  .toColor(),
                            ),),
                          decoration: BoxDecoration(
                            color: HSLColor.fromColor(Colors.grey).withLightness(0.3).toColor(),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0)),
                          ),
                          width: 55,
                          height: 55,
                        ),



                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 42,),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text("referrals & gems",
                            style: TextStyle(
                                wordSpacing: .5,
                                letterSpacing: .5,
                                color: Colors.grey[500],
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Text("payments",
                          style: TextStyle(
                              wordSpacing: .5,
                              letterSpacing: .5,
                              color: Colors.grey[500],
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(width: 54,),
                        Text("club",
                          style: TextStyle(
                              wordSpacing: .5,
                              letterSpacing: .5,
                              color: Colors.grey[500],
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(

                      children: [
                        const SizedBox(width: 70,),
                        Container(
                          child: Container(
                            child: Icon(
                              Icons.wallet_travel_rounded,
                              color: HSLColor.fromColor(Colors.red)
                                  .withLightness(0.8)
                                  .toColor(),
                            ),),
                          decoration: BoxDecoration(
                            color: HSLColor.fromColor(Colors.grey).withLightness(0.3).toColor(),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0)),
                          ),
                          width: 55,
                          height: 55,
                        ),
                        const SizedBox(width: 45,),
                        Container(
                          child: Container(
                            child: Icon(
                              Icons.file_present,
                              color: HSLColor.fromColor(Colors.red)
                                  .withLightness(0.8)
                                  .toColor(),
                            ),),
                          decoration: BoxDecoration(
                            color: HSLColor.fromColor(Colors.grey).withLightness(0.3).toColor(),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0)),
                          ),
                          width: 55,
                          height: 55,
                        ),
                        const SizedBox(width: 45,),
                        Container(
                          child: Container(
                            child: Icon(
                              Icons.home_work_outlined,
                              color: HSLColor.fromColor(Colors.red)
                                  .withLightness(0.8)
                                  .toColor(),
                            ),),
                          decoration: BoxDecoration(
                            color: HSLColor.fromColor(Colors.grey).withLightness(0.3).toColor(),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0)),
                          ),
                          width: 55,
                          height: 55,
                        ),



                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 64,),
                        Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: Text("cashbacks",
                            style: TextStyle(
                                wordSpacing: .5,
                                letterSpacing: .5,
                                color: Colors.grey[500],
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text("statement / due",
                                style: TextStyle(
                                    wordSpacing: .5,
                                    letterSpacing: .5,
                                    color: Colors.grey[500],
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Text("amount",
                              style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,
                                  color: Colors.grey[500],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(width: 34,),
                        Text("rent",
                          style: TextStyle(
                              wordSpacing: .5,
                              letterSpacing: .5,
                              color: Colors.grey[500],
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(

                      children: [
                        const SizedBox(width: 70,),
                        Container(
                          child: Container(
                            child: Icon(
                              Icons.help,
                              color: HSLColor.fromColor(Colors.red)
                                  .withLightness(0.8)
                                  .toColor(),
                            ),),
                          decoration: BoxDecoration(
                            color: HSLColor.fromColor(Colors.grey).withLightness(0.3).toColor(),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0)),
                          ),
                          width: 55,
                          height: 55,
                        ),



                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 57,),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text("other issues",
                            style: TextStyle(
                                wordSpacing: .5,
                                letterSpacing: .5,
                                color: Colors.grey[500],
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            )));
  }
}
