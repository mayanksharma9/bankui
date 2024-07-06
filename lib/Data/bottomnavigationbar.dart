import 'package:bankui/screens/cards/my_cards.dart';
import 'package:bankui/screens/cards/my_cards/manage_customer_care.dart';
import 'package:bankui/screens/clubs/my_club.dart';
import 'package:bankui/screens/money/my_money.dart';
import 'package:flutter/material.dart';
import 'package:bankui/screens/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class mainbottomnavigationbar extends StatefulWidget {
  int check;
 mainbottomnavigationbar({required this.check});

  @override
  _mainbottomnavigationbarState createState() => _mainbottomnavigationbarState();
}

class _mainbottomnavigationbarState extends State<mainbottomnavigationbar> {
  Color primaryColor = const Color(0XFF26282B);

  bool indexcheck=false;


  setBottomBarIndex(index) {
    setState(() {
      widget.check = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        width: width,
        height: 125,
        child: Stack(
          clipBehavior: Clip.none, children: [
            CustomPaint(
              size: Size(width,(width*0.35).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width,
                  height: 125,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25,bottom: 15),
                        child: InkWell(
                          onTap: () {
                            setBottomBarIndex(widget.check);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));


                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.home,
                                color: widget.check == 0
                                    ?  HSLColor.fromColor(Colors.red).withLightness(0.8).toColor()
                                    : Colors.grey,
                                size:18,
                              ),
                              const SizedBox(
                                height: 6,
                              ),

                              Text(
                                "home",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: widget.check == 0
                                      ? HSLColor.fromColor(Colors.red).withLightness(0.8).toColor()
                                      : Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25,bottom: 15),
                        child: InkWell(
                          onTap: () {
                            setBottomBarIndex(widget.check);
                            //my_cards
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const my_cards()));

                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.creditCard,
                                color: widget.check == 1
                                    ?   HSLColor.fromColor(Colors.red).withLightness(0.8).toColor()
                                    : Colors.grey,
                                size: 18,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                "cards",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: widget.check == 1
                                      ?  HSLColor.fromColor(Colors.red).withLightness(0.8).toColor()
                                      : Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        heightFactor: 1.5,
                        child: InkWell(

                          child: FloatingActionButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),side: const BorderSide(color: Colors.grey, width: 2.5)),
                              backgroundColor: HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor(),
                              child: const Icon(FontAwesomeIcons.stream,size: 20,
                                color: Colors.grey,
                              ),
                              elevation: 0.1,
                            onPressed: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder: (context, animation, secondaryAnimation) => const Manage_Customer_care(),
                                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                  return child;
                                },
                              )
                              );
                            },

                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25,bottom: 15),
                        child: InkWell(
                          onTap: () {
                            setBottomBarIndex(widget.check);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>My_Money()));

                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.moneyBillWave,
                                color: widget.check == 2
                                    ?   HSLColor.fromColor(Colors.red).withLightness(0.8).toColor()
                                    : Colors.grey,
                                size:18,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                "money",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: widget.check == 2
                                      ?   HSLColor.fromColor(Colors.red).withLightness(0.8).toColor()
                                      : Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25,bottom: 15),
                        child: InkWell(
                          onTap: () {
                            setBottomBarIndex(widget.check);
                            //My_Club
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const My_Club()));

                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.shoppingBag,
                                color: widget.check == 3
                                    ?   HSLColor.fromColor(Colors.red).withLightness(0.8).toColor()
                                    : Colors.grey,
                                size:18,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                "club",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: widget.check == 3
                                      ?  HSLColor.fromColor(Colors.red).withLightness(0.8).toColor()
                                      : Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}

//HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor()
class RPSCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = HSLColor.fromColor(Colors.grey).withLightness(0.15).toColor()
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    Path path_0 = Path();
    path_0.moveTo(0,size.height*0.3928571);
    path_0.lineTo(size.width*0.1875000,size.height*0.3928571);
    path_0.lineTo(size.width*0.2187500,size.height*0.3928571);
    path_0.lineTo(size.width*0.2575000,size.height*0.3892857);
    path_0.quadraticBezierTo(size.width*0.3040625,size.height*0.3794643,size.width*0.3537500,size.height*0.3571429);
    path_0.cubicTo(size.width*0.4996875,size.height*0.2678571,size.width*0.5003125,size.height*0.2678571,size.width*0.6450000,size.height*0.3571429);
    path_0.quadraticBezierTo(size.width*0.6943750,size.height*0.3803571,size.width*0.7437500,size.height*0.3857143);
    path_0.lineTo(size.width*0.7812500,size.height*0.3928571);
    path_0.lineTo(size.width*0.8125000,size.height*0.3928571);
    path_0.lineTo(size.width,size.height*0.3928571);
    path_0.lineTo(size.width,size.height);
    path_0.lineTo(0,size.height);
    path_0.lineTo(0,size.height*0.3964286);
    canvas.drawPath(path_0, paint_0);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}