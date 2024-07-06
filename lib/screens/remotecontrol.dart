import 'package:bankui/screens/home.dart';
import 'package:flutter/material.dart';


class RemoteControl extends StatefulWidget {
  const RemoteControl({Key? key}) : super(key: key);

  @override
  _RemoteControlState createState() => _RemoteControlState();
}

class _RemoteControlState extends State<RemoteControl> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.blueGrey[900],
        backgroundColor: Colors.blueGrey[900],

        body:Container(
          width: width,
          height: height,

          child: Column(
            children: [
              const SizedBox(
                height: 28,
              ),

              Container(
                color: Colors.blueGrey[900],
                height: height / 8.5,
                width: width,

                child:  ListTile(
                  leading: Text("remote control",

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

              Container(
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Container(

                                width: 160,
                                height: 65,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey[800],

                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.credit_card_sharp,
                                      // color: Colors.deepOrange[200],
                                      color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),

                                    ),
                                    const SizedBox(width: 10,),

                                    Text("credit cards",
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(

                                width: 160,
                                height: 65,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey[800],

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(right:35),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.motion_photos_on_sharp,
                                        // color: Colors.deepOrange[200],
                                        color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),

                                      ),
                                      const SizedBox(width: 10,),
                                      Text("explore\nrewards",
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Container(

                                width: 160,
                                height: 65,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey[800],

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.euro,
                                        // color: Colors.deepOrange[200],
                                        color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),

                                      ),
                                      const SizedBox(width: 10,),
                                      Text("3,37,129\nCRED coins",
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(

                                width: 160,
                                height: 65,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey[800],

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.flash_on,
                                        // color: Colors.deepOrange[200],
                                        color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),

                                      ),
                                      const SizedBox(width: 10,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,

                                        children: [
                                          Text("refer to CRED",
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[400],
                                            ),
                                          ),
                                          const SizedBox(width: 10,),
                                          Container(
                                            width: 70,
                                            height: 20,
                                            child: Center(
                                              child: Text (
                                                  "earn 500.",
                                                  style: new TextStyle(
                                                      color: Colors.grey[400],
                                                      fontWeight: FontWeight.w900
                                                  )

                                              ),
                                            ),
                                            decoration: new BoxDecoration (
                                                borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                                                color: Colors.green[800]
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
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Container(

                                width: 160,
                                height: 65,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey[800],

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.assistant_direction,
                                        // color: Colors.deepOrange[200],
                                        color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),

                                      ),
                                      const SizedBox(width: 10,),
                                      Text("check bank\n balance",
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(

                                width: 160,
                                height: 65,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey[800],

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 11),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.album_rounded,
                                        // color: Colors.deepOrange[200],
                                        color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),

                                      ),
                                      const SizedBox(width: 10,),
                                      Text("check credit\nscore",
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Container(

                                width: 160,
                                height: 65,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey[800],

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 7),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Icon(Icons.house_outlined,
                                        // color: Colors.deepOrange[200],
                                        color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),

                                      ),
                                      const SizedBox(width: 10,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                        children: [
                                          Text("pay rent",
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[400],
                                            ),
                                          ),
                                          Container(
                                            width: 70,
                                            height: 20,
                                            child: Center(
                                              child: Text (
                                                  "10+ offers",
                                                  style: new TextStyle(
                                                      color: Colors.grey[400],
                                                      fontWeight: FontWeight.w900
                                                  )

                                              ),
                                            ),
                                            decoration: new BoxDecoration (
                                                borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                                                color: Colors.green[800]
                                            ),
                                          ),

                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                              Container(

                                width: 160,
                                height: 65,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey[800],


                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(width: 4,),
                                      Icon(Icons.add_shopping_cart,
                                        // color: Colors.deepOrange[200],
                                        color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),

                                      ),
                                      const SizedBox(width: 10,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                        children: [
                                          Text("pay edu fees",
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[400],
                                            ),
                                          ),
                                          Container(
                                            width: 70,
                                            height: 20,
                                            child: Center(
                                              child: Text (
                                                  "new",
                                                  style: new TextStyle(
                                                      color: Colors.grey[400],
                                                      fontWeight: FontWeight.w900
                                                  )

                                              ),
                                            ),
                                            decoration: new BoxDecoration (
                                                borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                                                color: Colors.green[800]
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
                          const SizedBox(
                            height: 15,
                          ),
                          Row(

                            children: [

                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Container(

                                  width: 160,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    color: Colors.blueGrey[800],

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 14),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Icon(
                                          Icons.store_sharp,
                                          // color: Colors.deepOrange[200],
                                          // color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),
                                          color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),


                                        ),
                                        const SizedBox(width: 10,),
                                        Text("visit store",
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.grey[400],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(
                      height: 1,
                      thickness: 2,
                    ),
                    Container(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.perm_identity_outlined,
                              color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),
                            ),
                            title:Text("earn ₹500. invite a friend",
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
                            leading: Icon(Icons.description_rounded,
                              color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),
                            ),
                            title:Text("view payment history",
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
                            leading: Icon(Icons.headset_outlined,
                              color: HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),
                            ),
                            title:Text("get support",
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
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );

  }
}
