import 'dart:ui';

//import 'package:clay_containers/widgets/clay_container.dart';
import 'package:bankui/Utils/duecardlists.dart';
import 'package:bankui/screens/remotecontrol.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bankui/Data/bottomnavigationbar.dart';
import 'package:bankui/Data/constants.dart';
import 'package:bankui/screens/notifications.dart';
import 'package:bankui/screens/person_settings.dart';

//class needs to extend StatefulWidget since we need to make changes to the bottom app bar according to the user clicks
class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  //call this method on click of each bottom app bar item to update the screen

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
        body: Container(
          child: Stack(children: [
            Column(
              children: [
                Container(
                  color: Colors.black54,
                  height: height / 7,
                  width: width,
                  child: Container(
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[

                            InkWell(
                   //
                              onTap: (){
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) => Person_Settings(),
                                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                    return child;
                                  },
                                )
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: CircleAvatar(
                                  radius: 22.0,
                                  child: ClipRRect(
                                    child: Image.asset('assets/shawaiz.jpg'),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "profile",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color:Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                        SizedBox(width: width / 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            NeumorphicContainer(
                              child: Container(
                                child: Icon(Icons.control_camera_outlined,
                                    color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor()
                                ),
                              ),
                              borderColor: Colors.grey,
                              height: 45,
                              width: 45,
                              borderRadius:45,
                              //  primaryColor: Colors.blueGrey[900],
                              primaryColor: HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
                              spread: 3.5,
                              //convex neumorphism design
                              curvature: Curvature.convex,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "stories",
                              style: TextStyle(
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                color:Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => const Notifications(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                return child;
                              },
                            )
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              NeumorphicContainer(
                                child: Container(
                                  child: Icon(Icons.notifications,
                                      color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor()
                                  ),
                                ),
                                borderColor: Colors.grey,

                                height: 45,
                                width: 45,
                                borderRadius:45,
                                //primaryColor: Colors.blueGrey[900],
                                primaryColor: HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
                                spread: 3.5,
                                //convex neumorphism design
                                curvature: Curvature.convex,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "notifications",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => const RemoteControl(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                return child;
                              },
                            )
                            );
                          },
                          child: Hero(
                            tag: "",
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                NeumorphicContainer(
                                  child: Container(
                                    child: Icon(Icons.group_work,
                                        color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor()
                                    ),
                                  ),
                                  borderColor: Colors.grey,
                                  height: 45,
                                  width: 45,
                                  borderRadius:45,
                                  //primaryColor: Colors.blueGrey[900],
                                  primaryColor: HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
                                  spread: 3.5,
                                  //convex neumorphism design
                                  curvature: Curvature.convex,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "control",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color:Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(
                  height: 5,
                  thickness: 10,
                ),
                const Expanded(
                  child: DueCardList(),
                  // child: SingleChildScrollView(
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(left: 20, right: 20),
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.stretch,
                  //       children: <Widget>[
                  //         const SizedBox(
                  //           height: 40,
                  //         ),
                  //         const Text(
                  //           "hello, Shawaiz",
                  //           style: TextStyle(
                  //             color: Colors.white,
                  //             fontStyle: FontStyle.normal,
                  //             fontSize: 20,
                  //             fontWeight: FontWeight.bold,
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           height: 10,
                  //         ),
                  //         const Text(
                  //           "here are today's",
                  //           style: TextStyle(
                  //             letterSpacing: .5,
                  //             wordSpacing: .5,
                  //             fontWeight: FontWeight.bold,
                  //             color:Colors.grey,
                  //             fontStyle: FontStyle.normal,
                  //             // fontSize: 20,
                  //             // fontWeight: FontWeight.bold,
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           height: 10,
                  //         ),
                  //         const Text(
                  //           "recommended actions for you",
                  //           style: TextStyle(
                  //             letterSpacing: .5,
                  //             wordSpacing: .5,
                  //             fontWeight: FontWeight.bold,
                  //             color:Colors.grey,
                  //             fontStyle: FontStyle.normal,
                  //             // fontSize: 20,
                  //             // fontWeight: FontWeight.bold,
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           height: 40,
                  //         ),
                  //         Container(
                  //           height: 175,
                  //           width: 100,
                  //           decoration: BoxDecoration(
                  //               borderRadius:
                  //               const BorderRadius.all(Radius.circular(20)),
                  //               color: Colors.white,
                  //               boxShadow: [
                  //                 BoxShadow(
                  //                     color: Constants.softHighlightColor,
                  //                     offset: const Offset(-10, -10),
                  //                     spreadRadius: 0,
                  //                     blurRadius: 10),
                  //                 BoxShadow(
                  //                     color: Constants.softShadowColor,
                  //                     offset: const Offset(10, 10),
                  //                     spreadRadius: 0,
                  //                     blurRadius: 10)
                  //               ]),
                  //           child: Container(
                  //             child: Padding(
                  //               padding:
                  //               const EdgeInsets.only(left: 20, top: 22),
                  //               child: Column(
                  //                 crossAxisAlignment:
                  //                 CrossAxisAlignment.stretch,
                  //                 children: <Widget>[
                  //                   const Text(
                  //                     "clear your upcoming bills to",
                  //                     style: TextStyle(
                  //                         wordSpacing: .5,
                  //                         letterSpacing: .5,

                  //                         color: Colors.black87,
                  //                         fontSize: 16,
                  //                         fontWeight: FontWeight.bold),
                  //                   ),
                  //                   const Text(
                  //                     "earn coins",
                  //                     style: TextStyle(
                  //                         wordSpacing: .5,
                  //                         letterSpacing: .5,
                  //                         color: Colors.black87,
                  //                         fontSize: 16,
                  //                         fontWeight: FontWeight.bold),
                  //                   ),
                  //                   Row(
                  //                     children: [
                  //                       Container(
                  //                         height: 42,
                  //                         width: 42,
                  //                         margin:
                  //                         const EdgeInsets.only(left: 5, top: 35),
                  //                         padding: const EdgeInsets.all(5),
                  //                         decoration: BoxDecoration(
                  //                             borderRadius:
                  //                             BorderRadius.circular(5),
                  //                             border: Border.all(
                  //                                 width: 0.5,
                  //                                 color: Colors.black54)),
                  //                         child: const Icon(
                  //                           Icons.add_box_outlined,
                  //                           color: Colors.black87,
                  //                         ),
                  //                       ),
                  //                       const SizedBox(
                  //                         width: 5,
                  //                       ),
                  //                       const Column(
                  //                         children: [
                  //                           SizedBox(
                  //                             height: 25,
                  //                           ),
                  //                           Text(
                  //                             "HDFC Bank",
                  //                             style: TextStyle(
                  //                                 color: Colors.black87,
                  //                                 fontSize: 16,
                  //                                 fontWeight: FontWeight.bold),
                  //                           ),
                  //                           Text(
                  //                             "xxxxxx 7818",
                  //                             style: TextStyle(
                  //                                 color: Colors.black38,
                  //                                 fontSize: 13,
                  //                                 fontWeight: FontWeight.bold),
                  //                           ),
                  //                           SizedBox(
                  //                             height: 20,
                  //                           ),
                  //                           Text(
                  //                             "DUE IN 7 DAYS",
                  //                             style: TextStyle(
                  //                                 letterSpacing: .3,
                  //                                 wordSpacing: .3,
                  //                                 color: Colors.redAccent,
                  //                                 fontSize: 12,
                  //                                 fontWeight: FontWeight.bold),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                       Padding(
                  //                         padding: const EdgeInsets.only(
                  //                             left: 60, top: 20),
                  //                         child: Column(
                  //                           children: [
                  //                             const Text(
                  //                               "Rs.1,82,981",
                  //                               style: TextStyle(
                  //                                   color: Colors.black,
                  //                                   fontSize: 15,
                  //                                   fontWeight:
                  //                                   FontWeight.bold),
                  //                             ),
                  //                             ElevatedButton(
                  //                               style: ButtonStyle(
                  //                                   backgroundColor:
                  //                                   MaterialStateProperty
                  //                                       .all(Colors.black),
                  //                                   textStyle:
                  //                                   MaterialStateProperty
                  //                                       .all(const TextStyle(
                  //                                       fontSize: 18)),
                  //                                   shape: MaterialStateProperty
                  //                                       .all<RoundedRectangleBorder>(
                  //                                       RoundedRectangleBorder(
                  //                                         borderRadius:
                  //                                         BorderRadius.circular(
                  //                                             18.0),
                  //                                         //side: BorderSide(color: Colors.teal, width: 2.0)
                  //                                       ))),
                  //                               child: const Text('Pay now',
                  //                                 style: TextStyle(
                  //                                     wordSpacing: .5,
                  //                                     //letterSpacing: .5,
                  //                                     fontWeight: FontWeight.bold,
                  //                                     fontSize: 14
                  //                                 ),
                  //                               ),
                  //                               onPressed: () {},
                  //                             ),
                  //                           ],
                  //                         ),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           height: 20,
                  //         ),

                  //         //Second Card

                  //         Container(
                  //           height: 175,
                  //           width: 100,
                  //           decoration: BoxDecoration(
                  //               borderRadius:
                  //               const BorderRadius.all(Radius.circular(20)),
                  //               color: Colors.white,
                  //               boxShadow: [
                  //                 BoxShadow(
                  //                     color: Constants.softHighlightColor,
                  //                     offset: const Offset(-10, -10),
                  //                     spreadRadius: 0,
                  //                     blurRadius: 10),
                  //                 BoxShadow(
                  //                     color: Constants.softShadowColor,
                  //                     offset: const Offset(10, 10),
                  //                     spreadRadius: 0,
                  //                     blurRadius: 10)
                  //               ]),
                  //           child: Container(
                  //             child: Padding(
                  //               padding:
                  //               const EdgeInsets.only(left: 20, top: 22),
                  //               child: Column(
                  //                 crossAxisAlignment:
                  //                 CrossAxisAlignment.stretch,
                  //                 children: <Widget>[
                  //                   const Text(
                  //                     "activate your card to",
                  //                     style: TextStyle(
                  //                         wordSpacing: .5,
                  //                         letterSpacing: .5,
                  //                         color: Colors.black87,
                  //                         fontSize: 16,
                  //                         fontWeight: FontWeight.bold),
                  //                   ),
                  //                   const Text(
                  //                     "make your first payment",
                  //                     style: TextStyle(
                  //                         wordSpacing: .5,
                  //                         letterSpacing: .5,
                  //                         color: Colors.black87,
                  //                         fontSize: 16,
                  //                         fontWeight: FontWeight.bold),
                  //                   ),
                  //                   const Text(
                  //                     "and earn coins",
                  //                     style: TextStyle(
                  //                         wordSpacing: .5,
                  //                         letterSpacing: .5,
                  //                         color: Colors.black87,
                  //                         fontSize: 16,
                  //                         fontWeight: FontWeight.bold),
                  //                   ),
                  //                   Row(
                  //                     children: [
                  //                       Container(
                  //                         height: 42,
                  //                         width: 42,
                  //                         margin:
                  //                         const EdgeInsets.only(left: 5, top: 35),
                  //                         padding: const EdgeInsets.all(5),
                  //                         decoration: BoxDecoration(
                  //                             borderRadius:
                  //                             BorderRadius.circular(5),
                  //                             border: Border.all(
                  //                                 width: 0.5,
                  //                                 color: Colors.black54)),
                  //                         child: const Icon(
                  //                           FontAwesomeIcons.university,
                  //                           color: Colors.black87,
                  //                         ),
                  //                       ),
                  //                       const SizedBox(
                  //                         width: 5,
                  //                       ),
                  //                       const Column(
                  //                         children: [
                  //                           SizedBox(
                  //                             height: 25,
                  //                           ),
                  //                           Text(
                  //                             "ICICI Bank",
                  //                             style: TextStyle(
                  //                                 color: Colors.black87,
                  //                                 fontSize: 16,
                  //                                 fontWeight: FontWeight.bold),
                  //                           ),
                  //                           Text(
                  //                             "xxxx 1007",
                  //                             style: TextStyle(
                  //                                 color: Colors.black38,
                  //                                 fontSize: 13,
                  //                                 fontWeight: FontWeight.bold),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                       Padding(
                  //                         padding: const EdgeInsets.only(
                  //                             left: 70, top: 20),
                  //                         child: Column(
                  //                           children: [
                  //                             ElevatedButton(
                  //                               style: ButtonStyle(
                  //                                   backgroundColor:
                  //                                   MaterialStateProperty
                  //                                       .all(Colors.black),
                  //                                   textStyle:
                  //                                   MaterialStateProperty
                  //                                       .all(const TextStyle(
                  //                                       fontSize: 18)),
                  //                                   shape: MaterialStateProperty
                  //                                       .all<RoundedRectangleBorder>(
                  //                                       RoundedRectangleBorder(
                  //                                         borderRadius:
                  //                                         BorderRadius.circular(
                  //                                             18.0),
                  //                                         //side: BorderSide(color: Colors.teal, width: 2.0)
                  //                                       ))),
                  //                               child: const Text("Activate",
                  //                                 style: TextStyle(
                  //                                     wordSpacing: .5,
                  //                                     //letterSpacing: .5,
                  //                                     fontWeight: FontWeight.bold,
                  //                                     fontSize: 14
                  //                                 ),
                  //                               ),
                  //                               onPressed: () {},
                  //                             ),
                  //                           ],
                  //                         ),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           height: 20,
                  //         ),

                  //         //Third Card

                  //         Container(
                  //           height: 175,
                  //           width: 100,
                  //           decoration: BoxDecoration(
                  //               borderRadius:
                  //               const BorderRadius.all(Radius.circular(20)),
                  //               color: Colors.white,
                  //               boxShadow: [
                  //                 BoxShadow(
                  //                     color: Constants.softHighlightColor,
                  //                     offset: const Offset(-10, -10),
                  //                     spreadRadius: 0,
                  //                     blurRadius: 10),
                  //                 BoxShadow(
                  //                     color: Constants.softShadowColor,
                  //                     offset: const Offset(10, 10),
                  //                     spreadRadius: 0,
                  //                     blurRadius: 10)
                  //               ]),
                  //           child: Container(
                  //             child: Padding(
                  //               padding:
                  //               const EdgeInsets.only(left: 20, top: 22),
                  //               child: Column(
                  //                 crossAxisAlignment:
                  //                 CrossAxisAlignment.stretch,
                  //                 children: <Widget>[
                  //                   const Text(
                  //                     "activate your card to",
                  //                     style: TextStyle(
                  //                         wordSpacing: .5,
                  //                         letterSpacing: .5,
                  //                         color: Colors.black87,
                  //                         fontSize: 16,
                  //                         fontWeight: FontWeight.bold),
                  //                   ),
                  //                   const Text(
                  //                     "make your first payment",
                  //                     style: TextStyle(
                  //                         wordSpacing: .5,
                  //                         letterSpacing: .5,
                  //                         color: Colors.black87,
                  //                         fontSize: 16,
                  //                         fontWeight: FontWeight.bold),
                  //                   ),
                  //                   const Text(
                  //                     "and earn coins",
                  //                     style: TextStyle(
                  //                         wordSpacing: .5,
                  //                         letterSpacing: .5,
                  //                         color: Colors.black87,
                  //                         fontSize: 16,
                  //                         fontWeight: FontWeight.bold),
                  //                   ),
                  //                   Row(
                  //                     children: [
                  //                       Container(
                  //                         height: 42,
                  //                         width: 42,
                  //                         margin:
                  //                         const EdgeInsets.only(left: 5, top: 35),
                  //                         padding: const EdgeInsets.all(5),
                  //                         decoration: BoxDecoration(
                  //                             borderRadius:
                  //                             BorderRadius.circular(5),
                  //                             border: Border.all(
                  //                                 width: 0.5,
                  //                                 color: Colors.black54)),
                  //                         child: const Icon(
                  //                           FontAwesomeIcons.addressCard,
                  //                           color: Colors.black87,
                  //                         ),
                  //                       ),
                  //                       const SizedBox(
                  //                         width: 5,
                  //                       ),
                  //                       const Column(
                  //                         children: [
                  //                           SizedBox(
                  //                             height: 25,
                  //                           ),
                  //                           Text(
                  //                             "Amex",
                  //                             style: TextStyle(
                  //                                 color: Colors.black87,
                  //                                 fontSize: 16,
                  //                                 fontWeight: FontWeight.bold),
                  //                           ),
                  //                           Text(
                  //                             "xxxx 1002",
                  //                             style: TextStyle(
                  //                                 color: Colors.black38,
                  //                                 fontSize: 13,
                  //                                 fontWeight: FontWeight.bold),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                       Padding(
                  //                         padding: const EdgeInsets.only(
                  //                             left: 85, top: 20),
                  //                         child: Column(
                  //                           children: [
                  //                             ElevatedButton(
                  //                               style: ButtonStyle(
                  //                                   backgroundColor:
                  //                                   MaterialStateProperty
                  //                                       .all(Colors.black),
                  //                                   textStyle:
                  //                                   MaterialStateProperty
                  //                                       .all(const TextStyle(
                  //                                       fontSize: 18)),
                  //                                   shape: MaterialStateProperty
                  //                                       .all<RoundedRectangleBorder>(
                  //                                       RoundedRectangleBorder(
                  //                                         borderRadius:
                  //                                         BorderRadius.circular(
                  //                                             18.0),
                  //                                         //side: BorderSide(color: Colors.teal, width: 2.0)
                  //                                       ))),
                  //                               child: const Text('Activate',
                  //                                 style: TextStyle(
                  //                                     wordSpacing: .5,

                  //                                     fontWeight: FontWeight.bold,
                  //                                     fontSize: 14
                  //                                 ),
                  //                               ),
                  //                               onPressed: () {},
                  //                             ),
                  //                           ],
                  //                         ),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           height: 80,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ),
              ],
            ),
           mainbottomnavigationbar(check: 0,)
          ]),
        ),
      ),
    );
  }
}





class NeumorphicContainer extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  final double height;
  final double width;
  final double borderRadius;
  final Color primaryColor;
  final double spread;
  final Curvature curvature;

  const NeumorphicContainer({
    required this.child,
    required this.borderColor,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.primaryColor,
    required this.spread,
    required this.curvature,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: borderColor,
            spreadRadius: spread,
            blurRadius: 7.5,
            offset: curvature == Curvature.convex
                ? const Offset(4, 4)
                : const Offset(-4, -4),
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: spread,
            blurRadius: 7.5,
            offset: curvature == Curvature.convex
                ? const Offset(-4, -4)
                : const Offset(4, 4),
          ),
        ],
      ),
      child: Center(child: child),
    );
  }
}

enum Curvature {
  convex,
  concave,
}

class MainBottomNavigationBar extends StatelessWidget {
  final int check;

  const MainBottomNavigationBar({required this.check});

  @override
  Widget build(BuildContext context) {
    // Define your BottomNavigationBar here
    return Container();
  }
}