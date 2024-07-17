
import 'package:bankui/Utils/duecardlists.dart';
import 'package:bankui/Utils/elevated.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class My_Cards extends StatefulWidget {
  const My_Cards({Key? key}) : super(key: key);
  @override
  _maxState createState() => _maxState();
}
class _maxState extends State<My_Cards> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String name="SHYAM SUNDAR";
    String not_paid="1,81,875";
    String charges_detected="934.43";
    return  const SafeArea(

        top: true,
        bottom: true, child: DueCardList(),
        // child: Builder(
        //   builder: (context) => CustomScrollView(
        //     slivers: [
        //       SliverOverlapInjector(
        //           handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
        //       SliverPadding(
        //         padding: const EdgeInsets.all(12),
        //         sliver: SliverList(
        //           delegate: SliverChildBuilderDelegate(
        //                 (context, index) {
        //               //Colors.pink;
        //                final childCount = 1;
        //               final hasSeparator = index != childCount - 1;
        //               final double bottom = hasSeparator ? 12 : 0;
        //                //final child = Text("Index is : $index");
        //               return Container(

        //                  //margin: EdgeInsets.only(bottom: bottom),
        //                 child: Column(
        //                   children: [
        //                     Padding(
        //                       padding: const EdgeInsets.only(top:30),
        //                       child: ClayContainer(
        //                         emboss: true,
        //                         color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),


        //                         height: 250,
        //                         width: 310,

        //                         spread: 4.5,
        //                         depth:14,
        //                         borderRadius: 24,
        //                         child: Card(
        //                           shape: RoundedRectangleBorder(
        //                             side: BorderSide(color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),),
        //                             borderRadius: BorderRadius.circular(21),
        //                           ),
        //                           color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
        //                             child: Container(
        //                             child: Column(
        //                               children: [
        //                                 Padding(
        //                                   padding: const EdgeInsets.only(top:30),
        //                                   child: Text("amount to be paid",
        //                                       style: TextStyle(
        //                                       wordSpacing: .5,
        //                                       letterSpacing: .5,
        //                                       color:Colors.grey[600],
        //                                       fontSize: 13,
        //                                       fontWeight: FontWeight.bold
        //                                   ),),
        //                                 ),
        //                                 Padding(
        //                                   padding: const EdgeInsets.only(top:15),
        //                                   child: Text("₹$not_paid",
        //                                     style: TextStyle(
        //                                       wordSpacing: .5,
        //                                       letterSpacing: .5,
        //                                       color: Colors.grey[500],
        //                                       fontSize: 24,
        //                                       fontWeight: FontWeight.bold,)
        //                                   ),
        //                                 ),
        //                                 Padding(
        //                                   padding: const EdgeInsets.only(top:30),
        //                                   child: Row(
        //                                     mainAxisAlignment: MainAxisAlignment.center,
        //                                     children: [
        //                                       Text("hidden charges detected",
        //                                         style: TextStyle(
        //                                             wordSpacing: .5,
        //                                             letterSpacing: .5,

        //                                             color:Colors.grey[600],
        //                                             fontSize: 13,
        //                                             fontWeight: FontWeight.bold
        //                                         ),),
        //                                     Text("  ₹$charges_detected",
        //                                       style: TextStyle(
        //                                           wordSpacing: .5,
        //                                           letterSpacing: .5,
        //                                           color:Colors.brown[500],
        //                                           fontSize: 14,
        //                                           fontWeight: FontWeight.bold
        //                                       ),),
        //                                       Icon(Icons.chevron_right,color: Colors.grey[600],size: 21,),
        //                                     ],
        //                                   ),
        //                                 ),
        //                                 Row(
        //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                                   children: [
        //                                     Container(
        //                                       width: 160,
        //                                       child:  const Divider(
        //                                         height: 40,
        //                                         thickness: 1.9,
        //                                       ),
        //                                     ),
        //                                     const SizedBox(
        //                                       width: 30,
        //                                     ),
        //                                     Container(
        //                                       width: 90,
        //                                       child:  const Divider(
        //                                         height: 40,
        //                                         thickness: 1.9,
        //                                       ),
        //                                     ),

        //                                   ],
        //                                 ),
        //                                 Row(
        //                                   children: [
        //                                     const SizedBox(
        //                                       width: 10,
        //                                     ),
        //                                     Container(
        //                                       width: 43,
        //                                       height: 43,
        //                                       child: Icon(Icons.mic_external_off,color: Colors.brown[600],size:  21,),
        //                                       decoration: BoxDecoration(

        //                                           border: Border.all(
        //                                             color: HSLColor.fromColor(Colors.grey)
        //                                                 .withLightness(0.5)
        //                                                 .toColor(),
        //                                             width: 2.2,
        //                                           ),
        //                                           borderRadius: BorderRadius.circular(20) // use instead of BorderRadius.all(Radius.circular(20))
        //                                       ),
        //                                     ),
        //                                     const SizedBox(
        //                                       width: 10,
        //                                     ),
        //                                     Container(
        //                                       width: 43,
        //                                       height: 43,
        //                                       child: Icon(Icons.plagiarism,color: Colors.brown[600],size:  21,),
        //                                       decoration: BoxDecoration(
        //                                           border: Border.all(
        //                                             color: HSLColor.fromColor(Colors.brown)
        //                                                 .withLightness(0.5)
        //                                                 .toColor(),
        //                                             width: 2.2,
        //                                           ),
        //                                           borderRadius: BorderRadius.circular(20) // use instead of BorderRadius.all(Radius.circular(20))
        //                                       ),
        //                                     ),
        //                                     const SizedBox(
        //                                       width: 10,
        //                                     ),
        //                                     Container(
        //                                       width: 43,
        //                                       height: 43,
        //                                       child: Icon(Icons.markunread_mailbox,color: Colors.brown[600],size:  21,),
        //                                       decoration: BoxDecoration(
        //                                           border: Border.all(
        //                                             color: Colors.black,
        //                                             width: 2.2,
        //                                           ),
        //                                           borderRadius: BorderRadius.circular(20) // use instead of BorderRadius.all(Radius.circular(20))
        //                                       ),
        //                                     ),
        //                                     const SizedBox(
        //                                       width: 70,
        //                                     ),
        //                                     ClayContainer(
        //                                       emboss: true,
        //                                       color: HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
        //                                       height: 50,
        //                                       width: 50,

        //                                       spread: 2,
        //                                       depth:20,
        //                                       borderRadius: 9,
        //                                       child: Card(
        //                                         child: Icon(Icons.home_repair_service,color: Colors.brown[600],size: 35,),
        //                                         shape: RoundedRectangleBorder(
        //                                           side: BorderSide(color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),),
        //                                           borderRadius: BorderRadius.circular(2),
        //                                         ),
        //                                         color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
        //                                         // color:HSLColor.fromColor(Colors.brown).withLightness(0.6).toColor(),
        //                                       ),
        //                                     ), const SizedBox(
        //                                       width: 10,
        //                                     ),
        //                                   ],
        //                                 ),

        //                               ],
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                     Row(
        //                       children: [
        //                         const SizedBox(
        //                           width: 10,
        //                         ),
        //                         Padding(
        //                           padding: const EdgeInsets.only(left:10,top: 29),
        //                           child: Text("your cards",
        //                               style: TextStyle( wordSpacing: .5,
        //                                   letterSpacing: .5,

        //                                   color: HSLColor.fromColor(Colors.grey).withLightness(0.5).toColor(),
        //                                   fontSize: 17,
        //                                   fontWeight: FontWeight.bold)
        //                           ),
        //                         ),
        //                         const SizedBox(
        //                           width: 75,
        //                         ),
        //                         Stack(
        //                           children: [

        //                             Padding(
        //                               padding: const EdgeInsets.only(top:30),
        //                               child:  ClayContainer(

        //                                 color:  HSLColor.fromColor(Colors.grey).withLightness(0.18).toColor(),
        //                                 height: 50,
        //                                 width: 145,
        //                                 spread: 7,
        //                                 depth: 15,
        //                                 borderRadius: 20,
        //                                 curveType: CurveType.convex,
        //                                 child: Padding(
        //                                   padding: const EdgeInsets.only(left:60,top:15),
        //                                   child: Text("Add card",
        //                                     style: TextStyle( wordSpacing: .5,
        //                                         letterSpacing: .5,

        //                                         color: HSLColor.fromColor(Colors.grey).withLightness(0.5).toColor(),
        //                                         fontSize: 15,
        //                                         fontWeight: FontWeight.bold),
        //                                   ),
        //                                 ),

        //                               ),
        //                             ),
        //                             Padding(
        //                               padding: const EdgeInsets.only(top: 36,left: 5),
        //                               child: ClayContainer(


        //                                 color:  HSLColor.fromColor(Colors.grey).withLightness(0.18).toColor(),
        //                                 height: 43,
        //                                 width: 43,
        //                                 spread: 4,
        //                                 depth: -5,
        //                                 borderRadius: 20,
        //                                 curveType: CurveType.concave,
        //                                 child: Container(
        //                                   child: Icon(Icons.add, color:  Colors.grey[600],size:  22,),
        //                                 ),

        //                               ),
        //                             ),
        //                           ],
        //                         ),
        //                       ],
        //                     ),
        //                     Padding(
        //                       padding: const EdgeInsets.only(top:50),
        //                       child: ClayContainer(
        //                         emboss: true,
        //                         color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),


        //                         height: 410,
        //                         width: 310,

        //                         spread: 4.5,
        //                         depth:14,
        //                         borderRadius: 24,

        //                         child:Column(
        //                           children: [
        //                             Container(
        //                               width:310,
        //                               height:230,
        //                               child: Card(




        //                                 shape: RoundedRectangleBorder(

        //                                   side: BorderSide(color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),),
        //                                   borderRadius: BorderRadius.circular(21),

        //                                 ),


        //                                 //color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
        //                                 color:HSLColor.fromColor(Colors.grey).withLightness(0.35).toColor(),
        //                                 child: Container(
        //                                   child: Padding(
        //                                     padding: const EdgeInsets.only(left: 30,top: 30),
        //                                     child: Column(
        //                                       crossAxisAlignment: CrossAxisAlignment.start,
        //                                       children: [
        //                                         Container(
        //                                           child:Text("HDFC DINERS \nCLUB INTERNATI... ",style: TextStyle( wordSpacing: .5,
        //                                               letterSpacing: .5,

        //                                               color: Colors.brown[200],
        //                                               fontSize: 15,
        //                                               fontWeight: FontWeight.bold),),
        //                                         ),
        //                                         const SizedBox(height:  80,),
        //                                         Text("3610 XXXXXX 7810",
        //                                           style: TextStyle(
        //                                               wordSpacing: 1,
        //                                               letterSpacing: 2.5,

        //                                               color: Colors.brown[200],
        //                                               fontSize: 14,
        //                                               fontWeight: FontWeight.bold

        //                                           ),
        //                                         ),
        //                                         const SizedBox(height: 17,),
        //                                         Row(
        //                                           children: [
        //                                             Text("$name",
        //                                               style: TextStyle(
        //                                                   wordSpacing: 4,
        //                                                   letterSpacing: 1.5,

        //                                                   color: Colors.brown[200],
        //                                                   fontSize: 12,
        //                                                   fontWeight: FontWeight.bold

        //                                               ),
        //                                             ),
        //                                             const SizedBox(width: 85),
        //                                             const Icon(Icons.info_outline,color:Colors.white,)
        //                                           ],
        //                                         ),
        //                                       ],
        //                                     ),
        //                                   ),
        //                                 ),
        //                               ),
        //                             ),
        //                             const SizedBox(height: 10,),
        //                             Row(
        //                               children: [
        //                                 Column(
        //                                   children: [
        //                                     Padding(
        //                                       padding: const EdgeInsets.only(left:11,top:20),
        //                                       child: Text("total due",
        //                                         style: TextStyle(
        //                                             wordSpacing: 2,
        //                                             letterSpacing: 1.5,

        //                                             color:Colors.grey[600],
        //                                             fontSize: 12,
        //                                             fontWeight: FontWeight.bold

        //                                         ),
        //                                       ),
        //                                     ),
        //                                     Padding(
        //                                       padding: const EdgeInsets.only(left:15,top:10),
        //                                       child: Text("₹$not_paid",
        //                                         style: TextStyle(
        //                                             wordSpacing: 2,
        //                                             letterSpacing: 1,

        //                                             color: Colors.brown[200],
        //                                             fontSize: 14,
        //                                             fontWeight: FontWeight.bold

        //                                         ),
        //                                       ),
        //                                     ),
        //                                   ],
        //                                 ),
        //                                 Padding(
        //                                   padding: const EdgeInsets.only(left:80,top:25),
        //                                   child: Text("DUE IN 7 DAYS",
        //                                     style: TextStyle(
        //                                         wordSpacing: .5,
        //                                         letterSpacing: 1.5,
        //                                         color:Colors.orange[400],
        //                                         fontSize: 13,
        //                                         fontWeight: FontWeight.bold
        //                                     ),
        //                                   ),
        //                                 )
        //                               ],
        //                             ),
        //                             Row(
        //                               children: [
        //                                 Padding(
        //                                   padding: const EdgeInsets.only(top:45,left: 20),
        //                                   child:  ElevatedNeoPop(
        //             color: Colors.orange,
        //             onTapUp: () => HapticFeedback.vibrate(),
        //             onTapDown: () => HapticFeedback.vibrate(),
        //             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        //             label: "Manage",
        //             textStyle: const TextStyle(color: Colors.black, fontSize: 16),
        //             onPressed: (){},
        //           ),
        //         ),
        //                                 const SizedBox(
        //                                   width: 80,
        //                                 ),
        //                                 Padding(
        //                                   padding: const EdgeInsets.only(top:45),
        //                                   child:  ElevatedNeoPop(
        //             color: Colors.orange,
        //             onTapUp: () => HapticFeedback.vibrate(),
        //             onTapDown: () => HapticFeedback.vibrate(),
        //             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        //             label: "Pay Now",
        //             textStyle: const TextStyle(color: Colors.black, fontSize: 16),
        //             onPressed: (){},
        //           ),
        //                                 ),
        //                               ],
        //                             ),

        //                           ],
        //                         ),
        //                       ),
        //                     ),
        //                     Padding(
        //                       padding: const EdgeInsets.only(top:50),
        //                       child: ClayContainer(
        //                         emboss: true,
        //                         color: HSLColor.fromColor(Colors.grey).withLightness(0.17).toColor(),


        //                         height: 350,
        //                         width: 310,

        //                         spread: 4.5,
        //                         depth:14,
        //                         borderRadius: 24,

        //                         child:Column(
        //                           children: [
        //                             Container(
        //                               width:310,
        //                               height:230,
        //                               child: Card(
        //                                 shape: RoundedRectangleBorder(
        //                                   side: BorderSide(color:HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),),
        //                                   borderRadius: BorderRadius.circular(21),
        //                                 ),

        //                                  color:HSLColor.fromColor(Colors.orange).withLightness(0.2).toColor(),
        //                                 child: Container(
        //                                   child: Padding(
        //                                     padding: const EdgeInsets.only(left: 30,top: 35,right: 5),
        //                                     child: Column(
        //                                       crossAxisAlignment: CrossAxisAlignment.start,
        //                                       children: [
        //                                         Container(
        //                                           child:Text("ICICI BANK",style: TextStyle( wordSpacing: .5,
        //                                               letterSpacing: .5,

        //                                               color: Colors.brown[200],
        //                                               fontSize: 15,
        //                                               fontWeight: FontWeight.bold),),
        //                                         ),
        //                                         const SizedBox(height:  80,),
        //                                         Text("5176 37XX XXXX 1007",
        //                                           style: TextStyle(
        //                                               wordSpacing: 1,
        //                                               letterSpacing: 2.5,
        //                                               color: Colors.brown[200],
        //                                               fontSize: 14,
        //                                               fontWeight: FontWeight.bold
        //                                           ),
        //                                         ),
        //                                         const SizedBox(height: 17,),
        //                                         Row(
        //                                           children: [
        //                                             Text("$name",
        //                                               style: TextStyle(
        //                                                   wordSpacing: 4,
        //                                                   letterSpacing: 1.5,
        //                                                   color: Colors.brown[200],
        //                                                   fontSize: 12,
        //                                                   fontWeight: FontWeight.bold
        //                                               ),
        //                                             ),
        //                                             const SizedBox(width: 90),
        //                                             const Icon(Icons.info_outline,color:Colors.white,)
        //                                           ],
        //                                         ),
        //                                       ],
        //                                     ),
        //                                   ),
        //                                 ),
        //                               ),
        //                             ),
        //                             const SizedBox(height: 10,),
        //                             Row(
        //                               children: [
        //                                 Padding(
        //                                   padding: const EdgeInsets.only(top:45,left: 20),
        //                                   child:  ElevatedNeoPop(
        //             color: Colors.orange,
        //             onTapUp: () => HapticFeedback.vibrate(),
        //             onTapDown: () => HapticFeedback.vibrate(),
        //             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        //             label: "Manage",
        //             textStyle: const TextStyle(color: Colors.black, fontSize: 16),
        //             onPressed: (){},
        //           ),
        //                                 ),
        //                                 const SizedBox(
        //                                   width: 80,
        //                                 ),
        //                                 Padding(
        //                                   padding: const EdgeInsets.only(top:45),
        //                                   child:  ElevatedNeoPop(
        //             color: Colors.orange,
        //             onTapUp: () => HapticFeedback.vibrate(),
        //             onTapDown: () => HapticFeedback.vibrate(),
        //             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        //             label: "Pay Now",
        //             textStyle: const TextStyle(color: Colors.black, fontSize: 16),
        //             onPressed: (){},
        //           ),
        //                                 ),
        //                               ],
        //                             ),

        //                           ],
        //                         ),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               );
        //             },
        //            childCount: 1,
        //           ),
        //         ),
        //       )
        //     ],
        //   ),
        // ));
    );
  }
}
