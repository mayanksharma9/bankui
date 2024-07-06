
import 'package:bankui/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:bankui/screens/person_settings.dart';



class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(

        child: Scaffold(

            body: SingleChildScrollView(
              child: Container(

                child: Column(

                  children: [
                    SizedBox(


                      child:Container(
                        height: 10,
                        color: Colors.blueGrey[900],
                      ) ,
                    ),


                    Container(
                      color: Colors.blueGrey[900],
                      height: height / 8.5,
                      width: width,

                      child:  ListTile(
                        leading: Text("notifications",

                          style: TextStyle(
                            color:  Colors.grey[400],
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing:  InkWell(
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
                    ),
                    ListTile(
                      leading: Container(
                          height: 35,width: 35,

                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.pink.withOpacity(0.15),

                          ),
                          child: Icon(
                            Icons.info_outline,
                            color: Colors.brown[400],
                            size:25,
                          )
                      ),
                      title:   Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Container(
                                  width: 250,
                                  height: 80,
                                  child: const Text("your experian credit score has been refreshed . compare it with your previous score to analyze what has changed",
                                    style: TextStyle( wordSpacing: .5,
                                        letterSpacing: .5,

                                        color: Colors.black54,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),)
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 220),
                              child: Text('1w ago',style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,

                                  color: Colors.black38,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold

                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 100,top: 17),
                              child: Row(

                                children: [
                                  Text('  View report',style: TextStyle(
                                      wordSpacing: -1,
                                      letterSpacing: .2,

                                      color: Colors.brown[400],
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold

                                  ),),
                                  const SizedBox(width: 3,),
                                  Icon(Icons.chevron_right,color: Colors.brown[400],size: 19,)
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),

                    ),
                    const Divider(
                      height: 40,
                      thickness: 1.5,
                    ),
                    ListTile(
                      leading: Container(
                          height: 35,width: 35,

                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.pink.withOpacity(0.15),

                          ),
                          child: Icon(
                            Icons.info_outline,
                            color: Colors.brown[400],
                            size:25,
                          )
                      ),
                      title:   Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Container(
                                  width: 250,
                                  height: 80,
                                  child: const Text("your experian credit score has been refreshed . compare it with your previous score to analyze what has changed",style: TextStyle( wordSpacing: .5,
                                      letterSpacing: .5,

                                      color: Colors.black54,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),)
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 220),
                              child: Text('1w ago',style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,

                                  color: Colors.black38,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold

                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 100,top: 17),
                              child: Row(

                                children: [
                                  Text('  View report',style: TextStyle(
                                      wordSpacing: -1,
                                      letterSpacing: .2,

                                      color: Colors.brown[400],
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold

                                  ),),
                                  const SizedBox(width: 3,),
                                  Icon(Icons.chevron_right,color: Colors.brown[400],size: 19,)
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),

                    ),
                    const Divider(
                      height: 40,
                      thickness: 1.5,
                    ),
                    ListTile(
                      leading: Container(
                          height: 35,width: 35,

                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.pink.withOpacity(0.15),

                          ),
                          child: Icon(
                            Icons.chair_alt_sharp,
                            color: Colors.brown[400],
                            size:25,
                          )
                      ),
                      title:   Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Container(
                                  width: 250,
                                  height: 80,
                                  child: const Text("your experian credit score has been refreshed . compare it with your previous score to analyze what has changed",style: TextStyle( wordSpacing: .5,
                                      letterSpacing: .5,

                                      color: Colors.black54,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),)
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 220),
                              child: Text('1w ago',style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,

                                  color: Colors.black38,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold

                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 100,top: 17),
                              child: Row(

                                children: [
                                  Text('  View report',style: TextStyle(
                                      wordSpacing: -1,
                                      letterSpacing: .2,

                                      color: Colors.brown[400],
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold

                                  ),),
                                  const SizedBox(width: 3,),
                                  Icon(Icons.chevron_right,color: Colors.brown[400],size: 19,)
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),

                    ),
                    const Divider(
                      height: 40,
                      thickness: 1.5,
                    ),
                    ListTile(
                      leading: Container(
                          height: 35,width: 35,

                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.pink.withOpacity(0.15),

                          ),
                          child: Icon(
                            Icons.chair_alt_sharp,
                            color: Colors.brown[400],
                            size:25,
                          )
                      ),
                      title:   Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Container(
                                  width: 250,
                                  height: 80,
                                  child: const Text("your experian credit score has been refreshed . compare it with your previous score to analyze what has changed",style: TextStyle( wordSpacing: .5,
                                      letterSpacing: .5,

                                      color: Colors.black54,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),)
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 220),
                              child: Text('1w ago',style: TextStyle(
                                  wordSpacing: .5,
                                  letterSpacing: .5,

                                  color: Colors.black38,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold

                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 100,top: 17),
                              child: Row(

                                children: [
                                  Text('  View report',style: TextStyle(
                                      wordSpacing: -1,
                                      letterSpacing: .2,

                                      color: Colors.brown[400],
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold

                                  ),),
                                  const SizedBox(width: 3,),
                                  Icon(Icons.chevron_right,color: Colors.brown[400],size: 19,)
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),

                    ),
                    const Divider(
                      height: 40,
                      thickness: 1.5,
                    ),
                  ],
                ),
              ),
            )));
  }
}
