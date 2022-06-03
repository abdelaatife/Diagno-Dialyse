import 'package:ddialyse/screens/HomeDrawer.dart';
import 'package:ddialyse/screens/const.dart';
import 'package:ddialyse/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_icons/line_icons.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("asset/Union-2.png"),
                alignment: Alignment.topRight,
                opacity: 0.5,
                fit: BoxFit.contain),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [Colors.blue, primary],
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.values[3],
                children: [
                  Builder(
                    builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Image.asset(
                        "asset/liste_icon.png",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (() {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => profilePage()));
                    }),
                    child: CircleAvatar(
                      radius: 21,
                      backgroundImage: AssetImage('asset/man.jpg'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Hi Ahmed ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Youe have 4 new suggestion diet',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.75),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.all(18),
                height: 110,
                width: 360,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: secondary.withOpacity(0.25),
                      )
                    ],
                    border: Border.all(
                        color: Colors.white.withOpacity(0.2), width: 1.0),
                    gradient: LinearGradient(
                      colors: [backgrounddark, backgrounddark],
                      stops: [0.0, 1.0],
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Explore Your Monthly Progress\nand Missions",
                            style: TextStyle(
                              color: Colors.white,
                              height: 1.42,
                            ),
                          ),
                          Text(
                            "or add your missions",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.75),
                              height: 2,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        "asset/calendar.gif",
                        color: bleu,
                      )
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "suggestions meals",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.w300),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: bleu, borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Ionicons.apps_outline,
                        size: 28,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(6),
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/m2.png')),
                          borderRadius: BorderRadius.circular(10),
                          color: textlight),
                      width: 120,
                      height: 120,
                    ),
                    Container(
                      margin: EdgeInsets.all(6),
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/m3.png')),
                          borderRadius: BorderRadius.circular(10),
                          color: textlight),
                      width: 120,
                      height: 120,
                    ),
                    Container(
                      margin: EdgeInsets.all(6),
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/m4.png')),
                          borderRadius: BorderRadius.circular(10),
                          color: textlight),
                      width: 120,
                      height: 120,
                    ),
                    Container(
                      margin: EdgeInsets.all(6),
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/m1.png')),
                          borderRadius: BorderRadius.circular(10),
                          color: textlight),
                      width: 120,
                      height: 120,
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
